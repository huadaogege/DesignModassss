//
//  CashContext.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "CashContext.h"
#import "CashNormal.h"
#import "CashRebate.h"
#import "CashReturnMoney.h"

@interface CashContext ()

@property (nonatomic, strong) id <CashBase> superCash;

@end

@implementation CashContext

- (instancetype)initWithSuperCash:(id<CashBase>)superCash {
    self = [super init];
    if (self) {
        self.superCash = superCash;
    }
    return self;
}

- (instancetype)initWithCashType:(cashType)cashType {
    self = [super init];
    if (self) {
        switch (cashType) {
            case cashNormal:
                self.superCash = [[CashNormal alloc] init];
                break;
            case cashRebate:
                self.superCash = [[CashRebate alloc] initWithCashRebate:0.88];
                break;
            case cashReturnMoney:
                self.superCash = [[CashReturnMoney alloc] initWithReturnMoney:20.0];
                break;
            default:
                break;
        }
    }
    return self;
}

- (CGFloat)getResult:(CGFloat)money {
    return [self.superCash acceptCash:money];
}

@end
