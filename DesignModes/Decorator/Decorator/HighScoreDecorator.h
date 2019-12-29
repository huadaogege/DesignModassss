//
//  HighScoreDecorator.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/29.
//  Copyright © 2019 huadao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Decorator.h"

NS_ASSUME_NONNULL_BEGIN

@interface HighScoreDecorator : Decorator

- (void)highScoreDecorator:(AbstractSchoolReport *)sr;

- (void)reportHighScore;

@end

NS_ASSUME_NONNULL_END
