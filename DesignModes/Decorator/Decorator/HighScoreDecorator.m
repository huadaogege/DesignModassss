//
//  HighScoreDecorator.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/29.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "HighScoreDecorator.h"

@implementation HighScoreDecorator

- (void)highScoreDecorator:(AbstractSchoolReport *)sr {
    super.sr = sr;
}

- (void)reportHighScore {
    NSLog(@"这次考试最高分:语文:75、数学:78、英语:80.");
}

- (void)report {
    [self reportHighScore];
    [super report];
}


@end
