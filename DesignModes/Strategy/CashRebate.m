//
//  CashRebate.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "CashRebate.h"

@interface CashRebate ()

@property (nonatomic, assign) CGFloat rebate;

@end

@implementation CashRebate

- (instancetype)initWithCashRebate:(CGFloat)rebate {
    self = [super init];
    if (self) {
        self.rebate = rebate;
    }
    return self;
}

- (CGFloat)acceptCash:(CGFloat)cash {
    return cash * self.rebate;
}

@end
