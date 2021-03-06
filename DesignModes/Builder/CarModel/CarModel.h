//
//  CarModel.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/23.
//  Copyright © 2019 huadao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarModelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    StartType = 0,
    StopType,
    AlarmType,
    EngineBoomType
}ActionType;


@interface CarModel : NSObject <ModelProtocol>

@property (nonatomic, copy) NSArray *sequence;

@end

NS_ASSUME_NONNULL_END
