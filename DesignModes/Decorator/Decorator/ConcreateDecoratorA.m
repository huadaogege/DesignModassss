//
//  ConcreateDecoratorA.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/30.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "ConcreateDecoratorA.h"

@implementation ConcreateDecoratorA


- (Component *)decorator:(Component *)component {
    self.component = component;
    return self;
}

- (void)highScores {
    NSLog(@"今年的最高成绩:数学:82, 语文:80, 英语:79.");
}

- (void)operation {
    [self highScores];
    [self.component operation];
}

@end
