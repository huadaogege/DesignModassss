//
//  CashContext.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CashBase.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, cashType) {
    cashNormal = 0,
    cashRebate,
    cashReturnMoney,
};

@interface CashContext : NSObject

- (instancetype)initWithSuperCash:(id<CashBase>)superCash;

- (instancetype)initWithCashType:(cashType)cashType;

- (CGFloat)getResult:(CGFloat)money;

@end

NS_ASSUME_NONNULL_END
