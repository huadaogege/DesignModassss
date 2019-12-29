//
//  Decorator.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/29.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "AbstractSchoolReport.h"

NS_ASSUME_NONNULL_BEGIN

@interface Decorator : AbstractSchoolReport

@property (nonatomic, strong) AbstractSchoolReport *sr;

- (void)decorator:(AbstractSchoolReport *)sr;

@end

NS_ASSUME_NONNULL_END
