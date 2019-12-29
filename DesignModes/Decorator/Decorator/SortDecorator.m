//
//  SortDecorator.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/29.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "SortDecorator.h"

@implementation SortDecorator

- (void)sortDecorator:(AbstractSchoolReport *)sr {
    super.sr = sr;
}

- (void)reportSort {
    NSLog(@"我排名38名.");
}

- (void)report {
    [super report];
    [self reportSort];
}

@end
