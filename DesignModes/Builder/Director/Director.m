//
//  Director.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/27.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "Director.h"

@interface Director ()

@property (nonatomic, strong) id<KFCProductBuilder> builder;

@end

@implementation Director

- (instancetype)initWithBuilder:(id<KFCProductBuilder>)builder {
    self = [super init];
    if (self) {
        self.builder = builder;
    }
    return self;
}

- (void)createDrink:(NSString *)drink food:(NSString *)food snack:(NSString *)snack {
    [[[[self.builder createDrink:drink] createFood:food] createSnack:snack] createMeals];;
}

@end
