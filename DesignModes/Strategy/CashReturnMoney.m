//
//  CashReturnMoney.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "CashReturnMoney.h"

@interface CashReturnMoney ()

@property (nonatomic, assign) CGFloat returnMoney;

@end

@implementation CashReturnMoney

- (instancetype)initWithReturnMoney:(CGFloat)returnMoney {
    self = [super init];
    if (self) {
        self.returnMoney = returnMoney;
    }
    return self;
}

- (CGFloat)acceptCash:(CGFloat)cash {
    /* 我可以把我自己的算法设计的随心所欲,
       在暴露的接口里面是不关心我的具体实现的 */
    if (cash - self.returnMoney*2.0 > 5) {
        return cash - self.returnMoney;
    }
    return cash;
}

@end
