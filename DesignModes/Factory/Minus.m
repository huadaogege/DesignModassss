//
//  Minus.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/24.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "Minus.h"

@implementation Minus

@synthesize numberA = _numberA;
@synthesize numberB = _numberB;

- (CGFloat)calculate {
    return self.numberA - self.numberB;
}

@end
