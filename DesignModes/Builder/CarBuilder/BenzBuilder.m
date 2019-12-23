//
//  BenzBuilder.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/23.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "BenzBuilder.h"
#import "BenzModel.h"

@implementation BenzBuilder

- (instancetype)init {
    self = [super init];
    if (self) {
        self.car = [[BenzModel alloc] init];
    }
    return self;
}

- (void)setSequence:(NSArray *)sequence {
    [self.car setSequence:sequence];
}

- (CarModel *)getCarModel {
    return self.car;
}

@end
