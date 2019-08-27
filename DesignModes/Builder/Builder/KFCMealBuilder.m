//
//  KFCMealBuilder.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/27.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "KFCMealBuilder.h"

@interface KFCMealBuilder ()

@property (nonatomic, strong) id<KFCProduct>meals;

@end

@implementation KFCMealBuilder

- (instancetype)init {
    self = [super init];
    if (self) {
        self.meals = [[KFCMeals alloc] init];
    }
    return self;
}

- (id<KFCProductBuilder>)createDrink:(NSString *)drink {
    [self.meals drink:drink];
    return self;
}

- (id<KFCProductBuilder>)createFood:(NSString *)food {
    [self.meals food:food];
    return self;
}

- (id<KFCProductBuilder>)createSnack:(NSString *)snack {
    [self.meals snack:snack];
    return self;
}

- (id<KFCProduct>)createMeals {
    NSLog(@"已生产了一个KFC套餐.");
    return self.meals;
}

@end
