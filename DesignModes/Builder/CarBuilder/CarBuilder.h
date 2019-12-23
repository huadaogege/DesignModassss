//
//  CarBuilder.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/23.
//  Copyright © 2019 huadao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface CarBuilder : NSObject

@property (nonatomic, strong) CarModel *car;

- (void)setSequence:(NSArray *)sequence;

- (CarModel *)getCarModel;

@end

NS_ASSUME_NONNULL_END
