//
//  Locks.m
//  DesignModes
//
//  Created by 崔玉冠 on 2020/5/6.
//  Copyright © 2020 huadao. All rights reserved.
//

#import "Locks.h"
#include <pthread.h>

pthread_mutex_t rlock = PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t wlock = PTHREAD_MUTEX_INITIALIZER;
static int condition = 0;

@interface Locks ()

@property (nonatomic, strong) dispatch_queue_t concurrent_queue;
@property (nonatomic, strong) NSMutableDictionary *dataCenterDict;

@property (nonatomic, strong) NSMutableArray *testArray;

@property (nonatomic, strong) NSCondition *testCondation;
@property (nonatomic, assign) NSInteger productCount;


@end

@implementation Locks

- (void)test {
//    [self synchronized];
//    [self synchronizedTest];
//    [self synchronizedTestNSLock];
//    [self condationTest];
//    [self nslock];
    [self recursiveLock];
}

#pragma mark -- 互斥锁总结： --
#pragma mark -- @synchronized --

- (void)synchronized {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        @synchronized(self) {
            sleep(2);
            NSLog(@"线程1");
        }
        NSLog(@"线程1解锁成功");
    });
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        sleep(1);
        @synchronized(self) {
            NSLog(@"线程2");
        }
    });
}

- (void)synchronizedTest {
    // 在此情况下，不同线程中不断地retain 和 release，会存在某个时刻，多线程同时对testArray进行release，导致crash
    self.testArray = [NSMutableArray array];
    for (NSInteger i = 0; i < 200000; i ++) {
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            self->_testArray = [NSMutableArray array];
        });
    }
}

- (void)synchronizedTestSync {
    // 在此情况下，依然会崩溃，因为@synchronized(nil) = do nothing，被锁对象为nil的时候，
    // @synchronized并不尽如人意，使用NSLock
    _testArray = [NSMutableArray array];
    for (NSInteger i = 0; i < 200000; i ++) {
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            @synchronized (_testArray) {
                _testArray = [NSMutableArray array];
            }
        });
    }
}

- (void)synchronizedTestNSLock {
    // 该情况下才是线程安全的
    self.testArray = [NSMutableArray array];
    NSLock *lock = [[NSLock alloc] init];
    for (NSInteger i = 0; i < 200000; i ++) {
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            [lock lock];
             _testArray = [NSMutableArray array];
            [lock unlock];
        });
    }
}

#pragma mark -- NSLock --

- (void)nslock {
    NSLock *lock = [[NSLock alloc] init];
    //线程1
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [lock lock];
        NSLog(@"线程1");
        sleep(8);
        [lock unlock];
        NSLog(@"线程1解锁成功");
    });
    //线程2
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        sleep(1);//以保证让线程2的代码后执行
        [lock lock];
        NSLog(@"线程2");
        [lock unlock];
    });
}

#pragma mark -- NSRecursiveLock --

- (void)recursiveLock {
    NSRecursiveLock *lock = [[NSRecursiveLock alloc] init];
//    如果使用NSLock会出现死锁：lock会先上锁，但未执行解锁的时候，就会进入递归的下一层再次请求上锁，阻塞了该线程，线程被阻塞了自然后面的解锁代码不会执行，而形成了死锁。而NSRecursiveLock就是为了解决这个问题。
//    NSLock *lock = [[NSLock alloc] init];
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        static void (^testMethod)(int);
        testMethod = ^ (int value) {
            [lock lock];
            if (value > 0) {
                NSLog(@"current value = %d", value);
                testMethod(value - 1);
            }
            [lock unlock];
        };
        testMethod(10);
    });
}

#pragma mark -- 读写锁三种实现方式 --

// 方式一：

- (void)rLock {
    pthread_mutex_lock(&rlock);
    condition ++;
    if (condition == 1) {// 有人读，于是阻塞写锁
        pthread_mutex_lock(&wlock);
    }
    pthread_mutex_unlock(&rlock);
}

- (void)rUnLock {
    pthread_mutex_lock(&rlock);
    condition --;
    if (condition == 0) {// 没有人读，释放写锁，可以写入了
        pthread_mutex_unlock(&wlock);
    }
    pthread_mutex_unlock(&rlock);
}

- (void)wLock {
    pthread_mutex_lock(&wlock);
}

- (void)wUnLock {
    pthread_mutex_unlock(&wlock);
}


// 方式三：

- (void)readWriteTest {
    
    self.concurrent_queue = dispatch_queue_create("read_write_queue", DISPATCH_QUEUE_CONCURRENT);
    self.dataCenterDict = [[NSMutableDictionary alloc] init];
    
    dispatch_queue_t queue = dispatch_queue_create("com.akironer", DISPATCH_QUEUE_CONCURRENT);
    // 模拟多线程写
    for (int i = 0; i < 5; i ++) {
        dispatch_async(queue, ^{
            [self ak_setObject:[NSString stringWithFormat:@"akironer--%ld", (long)i] forKey:@"Key"];
        });
    }
    // 模拟多线程读
    for (int i = 0; i < 20; i ++) {
        dispatch_async(queue, ^{
            [self ak_objectForKey:@"Key"];
        });
    }
    // 模拟多线程情况下写
    for (NSInteger i = 0; i < 10; i ++) {
        dispatch_async(queue, ^{
            [self ak_setObject:[NSString stringWithFormat:@"iOS--%ld", (long)i] forKey:@"Key"];
        });
    }
}

#pragma mark - 读数据
- (id)ak_objectForKey:(NSString *)key {
    __block id obj;
    // 同步读取数据:
    dispatch_sync(self.concurrent_queue, ^{
        obj = [self.dataCenterDict objectForKey:key];
        NSLog(@"读：%@--%@", obj, [NSThread currentThread]);
        sleep(1);
    });
    return obj;
}

#pragma mark - 写数据
- (void)ak_setObject:(id)obj forKey:(NSString *)key {
    // 异步栅栏调用设置数据: 屏蔽同步
    dispatch_barrier_async(self.concurrent_queue, ^{
        [self.dataCenterDict setObject:obj forKey:key];
        NSLog(@"写：%@--%@", obj, [NSThread currentThread]);
        sleep(1);
    });
}

#pragma mark -- 条件锁 --
#pragma mark -- Condation --

- (void)condationTest {
    self.testCondation = [[NSCondition alloc] init];
    //创建生产-消费者
    for (int i = 0; i < 10; i ++) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
            [self producer]; // 生产
        });
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
            [self consumer]; // 消费
        });
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
            [self consumer]; // 消费
        });
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
            [self producer]; // 生产
        });
                            
    }
}

- (void)producer {
    [self.testCondation lock];
    self.productCount ++;
    NSLog(@"生产一个 现有 count %zd",self.productCount);
    [self.testCondation signal];
    [self.testCondation unlock];
}

- (void)consumer {
    [self.testCondation lock];
    while (self.productCount == 0) {
        NSLog(@"等待 count %zd",self.productCount);
        // 保证正常流程
        [self.testCondation wait];
    }
    //注意消费行为，要在等待条件判断之后
    self.productCount -= 1;
    NSLog(@"消费一个 还剩 count %zd ",self.productCount);
    [self.testCondation unlock];
}

#pragma mark -- CondationLock --

- (void)testCondationLock {
    NSConditionLock *condationLock = [[NSConditionLock alloc] initWithCondition:2];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
        [condationLock lockWhenCondition:1];
        NSLog(@"线程1");
        [condationLock unlockWithCondition:0];
    });
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
        [condationLock lockWhenCondition:2];
        NSLog(@"线程2");
        [condationLock unlockWithCondition:1];
    });
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [condationLock lock];
        NSLog(@"线程3");
        [condationLock unlock];
    });
}

@end
