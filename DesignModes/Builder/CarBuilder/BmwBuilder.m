//
//  BmwBuilder.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/23.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "BmwBuilder.h"
#import "BmwModel.h"

@implementation BmwBuilder

- (instancetype)init {
    self = [super init];
    if (self) {
        self.car = [[BmwModel alloc] init];
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
