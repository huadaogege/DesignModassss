//
//  CalculateFactory.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/24.
//  Copyright © 2019 huadao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculate.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, calculateType) {
    AddType = 0,
    MinusType,
    MutiplyType
};

@interface CalculateFactory : NSObject

+ (id <Calculate>)createCalculate:(NSString *)calculate;

@end

NS_ASSUME_NONNULL_END
