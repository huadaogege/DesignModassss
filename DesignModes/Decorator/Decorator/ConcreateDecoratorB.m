//
//  ConcreateDecoratorB.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/30.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "ConcreateDecoratorB.h"

@implementation ConcreateDecoratorB

- (Component *)decorator:(Component *)component {
    self.component = component;
    return self;
}

- (void)mySort {
    NSLog(@"我今年的排名:37名.");
}

- (void)operation {
    [self mySort];
    [self.component operation];
}

@end
