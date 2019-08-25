//
//  Sausage.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "Sausage.h"

@implementation Sausage

- (NSString *)description {
    return [[self.chickBurger description] stringByAppendingString:@" + 加香肠"];
}

- (CGFloat)cost {
    return [self.chickBurger cost] + 3.0;
}

@end
