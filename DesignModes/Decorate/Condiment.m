//
//  Condiment.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "Condiment.h"

@implementation Condiment

- (instancetype)initWithChickBurger:(id<Hamburger>)chickBurger {
    self = [super init];
    if (self) {
        self.chickBurger = chickBurger;
    }
    return self;
}

- (NSString *)description {
    return @"";
}

- (CGFloat)cost {
    return 0;
}

@end
