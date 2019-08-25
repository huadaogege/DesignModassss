//
//  CashBase.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//  一个类的行为或者算法在运行时可以更改, 实现算法被封装起来, 属于行为模式;
//  定义一系列算法, 并把他们一个个封装起来, 并且使他们可以相互替换

#ifndef CashBase_h
#define CashBase_h
#import <UIKit/UIKit.h>

@protocol CashBase <NSObject>

- (CGFloat)acceptCash:(CGFloat)cash;

@end

#endif /* CashBase_h */
