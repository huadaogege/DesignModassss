//
//  CashReturnMoney.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CashBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface CashReturnMoney : NSObject <CashBase>

- (instancetype)initWithReturnMoney:(CGFloat)returnMoney;

@end

NS_ASSUME_NONNULL_END
