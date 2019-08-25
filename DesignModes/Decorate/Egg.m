//
//  Egg.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "Egg.h"

@implementation Egg

- (NSString *)description {
    return [[self.chickBurger description] stringByAppendingString:@" + 加煎蛋"];
}

- (CGFloat)cost {
    return [self.chickBurger cost] + 2.0;
}

@end
