//
//  FourthCradeSchoolReport.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/28.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "FourthCradeSchoolReport.h"

@implementation FourthCradeSchoolReport

- (void)report {
    NSLog(@"\n尊敬的家长, 该学生的成绩单如下:\n语文:62、数学:68、英语:69.\n请家长签字:");
}

- (void)sign:(NSString *)name {
    NSLog(@"家长签字:%@", name);
}

@end
