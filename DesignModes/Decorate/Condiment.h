//
//  Condiment.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChickenBurger.h"
#import "Hamburger.h"

NS_ASSUME_NONNULL_BEGIN

@interface Condiment : NSObject <Hamburger>

@property (nonatomic, strong) ChickenBurger *chickBurger;

- (instancetype)initWithChickBurger:(id <Hamburger>)chickBurger;

@end

NS_ASSUME_NONNULL_END
