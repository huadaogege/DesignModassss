//
//  Calculate.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/24.
//  Copyright © 2019 huadao. All rights reserved.
//  属于创建型模式, 在我们创建对象时不会对客户端暴露创建逻辑

#ifndef Calculate_h
#define Calculate_h
#import <UIKit/UIKit.h>

@protocol Calculate <NSObject>

@property (nonatomic, assign) CGFloat numberA;
@property (nonatomic, assign) CGFloat numberB;

- (CGFloat)calculate;

@end


#endif /* Calculate_h */
