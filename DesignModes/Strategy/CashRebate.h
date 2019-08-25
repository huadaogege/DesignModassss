//
//  CashRebate.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CashBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface CashRebate : NSObject <CashBase>

- (instancetype)initWithCashRebate:(CGFloat)rebate;

@end

NS_ASSUME_NONNULL_END
