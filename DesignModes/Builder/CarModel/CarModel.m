//
//  CarModel.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/23.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "CarModel.h"

@implementation CarModel

@synthesize sequence = _sequence;

- (void)start {
    NSLog(@"是这样跑起来的");
}

- (void)stop {
    NSLog(@"是这样停下来的");
}

- (void)alarm {
    NSLog(@"是这样鸣笛的");
}

- (void)engineBoom {
    NSLog(@"发动机的声音是这样的");
}

- (void)run {
    for (NSNumber *actionNumber in self.sequence) {
        NSInteger action = [actionNumber integerValue];
        switch (action) {
            case 0:
                [self start];
                break;
            case 1:
                [self stop];
                break;
            case 2:
                [self alarm];
                break;
            case 3:
                [self engineBoom];
                break;
                
            default:
                break;
        }
    }
}

@end
