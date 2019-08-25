//
//  Company.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//  感觉该组合模式例子比较模糊, 需要再思考

#ifndef Company_h
#define Company_h
#import <UIKit/UIKit.h>

@protocol Company <NSObject>

@property (nonatomic, strong) NSString *name;

- (instancetype)initWithName:(NSString *)name;

- (void)addChild:(id<Company>)company;

- (void)removeChild:(id<Company>)company;

- (void)display;

- (void)lineOfDuty;

@end

#endif /* Company_h */
