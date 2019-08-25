//
//  Hamburger.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//  装饰器模式能动态的给一个对象添加新的功能, 且不改变之前的功能状态, 比添加子类更加灵活

#ifndef Hamburger_h
#define Hamburger_h
#import <UIKit/UIKit.h>

@protocol Hamburger <NSObject>

- (NSString *)description;
- (CGFloat)cost;

@end


#endif /* Hamburger_h */
