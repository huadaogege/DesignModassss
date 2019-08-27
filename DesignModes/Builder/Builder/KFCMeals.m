//
//  KFCMeals.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/27.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "KFCMeals.h"

@implementation KFCMeals

- (void)drink:(NSString *)drink {
    NSLog(@"套餐中的饮料:%@", drink);
}

- (void)food:(NSString *)food {
    NSLog(@"套餐中的主食:%@", food);
}

- (void)snack:(NSString *)snack {
    NSLog(@"套餐中的小吃:%@", snack);
}

@end
