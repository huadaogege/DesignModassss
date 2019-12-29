//
//  GuardFather.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/28.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "GuardFather.h"
#import "FourthCradeSchoolReport.h"
#import "HighScoreDecorator.h"
#import "SortDecorator.h"

@implementation GuardFather

- (void)readAndSign {
    AbstractSchoolReport *sr;
    sr = [[HighScoreDecorator alloc] init];
    [sr report];
    sr = [[SortDecorator alloc] init];
    [sr report];
    sr = [[FourthCradeSchoolReport alloc] init];
    [sr report];
    [sr sign:@"崔老三"];
}

@end
