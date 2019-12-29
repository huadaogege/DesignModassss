//
//  Decorator.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/29.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "Decorator.h"

@implementation Decorator

- (void)decorator:(AbstractSchoolReport *)sr {
    self.sr = sr;
}

- (void)report {
    [self.sr report];
}

- (void)sign:(NSString *)name {
    [self.sr sign:name];
}

@end
