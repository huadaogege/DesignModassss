//
//  CarDirector.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface CarDirector : NSObject

- (CarModel *)getABenzCarModel;

- (CarModel *)getABmwCarModel;



@end

NS_ASSUME_NONNULL_END
