//
//  SortDecorator.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/29.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "Decorator.h"

NS_ASSUME_NONNULL_BEGIN

@interface SortDecorator : Decorator

- (void)sortDecorator:(AbstractSchoolReport *)sr;

@end

NS_ASSUME_NONNULL_END
