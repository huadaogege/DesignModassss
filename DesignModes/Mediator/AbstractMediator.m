//
//  AbstractMediator.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/27.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "AbstractMediator.h"

@implementation AbstractMediator

- (instancetype)init {
    self = [super init];
    if (self) {
        self.purchase = [[Purchase alloc] init];
        self.stock = [[Stock alloc] init];
        self.sale = [[Sale alloc] init];
    }
    return self;
}

@end
