//
//  CalculateFactory.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/24.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "CalculateFactory.h"
#import "Add.h"
#import "Minus.h"
#import "Mutiply.h"

@implementation CalculateFactory

+ (id<Calculate>)createCalculate:(NSString *)calculate {
    NSArray *calculateTypes = @[@"+", @"-", @"*"];
    calculateType type = [calculateTypes indexOfObject:calculate];
    switch (type) {
        case AddType:
            return [[Add alloc] init];
            break;
        case MinusType:
            return [[Minus alloc] init];
            break;
        case MutiplyType:
            return [[Mutiply alloc] init];
            break;
        default:
            break;
    }
}

@end
