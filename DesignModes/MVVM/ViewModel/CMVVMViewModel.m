//
//  CMVVMViewModel.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/9/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "CMVVMViewModel.h"
#import "CMVVMModel.h"

@interface CMVVMViewModel ()

@property (nonatomic, copy) Success success;

@property (nonatomic, copy) Failure failure;

@end

@implementation CMVVMViewModel

- (instancetype)initWithSuccess:(Success)success failure:(Failure)failure {
    if (self = [super init]) {
        self.success = success;
        self.failure = failure;
        self.datas = [[NSMutableArray alloc] init];
        [self addObserver:self forKeyPath:@"selectName" options:NSKeyValueObservingOptionNew context:nil];
    }
    return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSString *selectName = change[NSKeyValueChangeNewKey];
    @synchronized (self) {
        NSInteger index = [self.datas indexOfObjectPassingTest:^BOOL(CMVVMModel *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            return [obj.ctitle isEqualToString:selectName];
        }];
        [self.datas removeObjectAtIndex:index];
    }
    if (self.success) {
        self.success(self.datas);
    }
}

- (void)dealloc {
    [self removeObserver:self forKeyPath:@"selectName" context:nil];
}

- (void)refreshDataAction {
    [[NSOperationQueue new] addOperationWithBlock:^{
        @synchronized (self) {
            [self.datas removeAllObjects];
            for (int i = 0; i < 10; i ++) {
                CMVVMModel *model = [[CMVVMModel alloc] init];
                model.ctitle = [NSString stringWithFormat:@"cyg%d", i];
                model.cdescription = [NSString stringWithFormat:@"dec-cyg%d", i];
                [self.datas addObject:model];
            }
        }
        sleep(3.0);
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            if (self.success) {
                self.success(self.datas);
            }
        }];
    }];
}

@end
