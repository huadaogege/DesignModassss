//
//  HumanFactory.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/23.
//  Copyright © 2019 huadao. All rights reserved.
//
#import "Human.h"
#ifndef FactoryProtocol_h
#define FactoryProtocol_h


@protocol HumanFactoryProtocol <NSObject>

+ (id <HumanProtocol>)createYellowHuman;
+ (id <HumanProtocol>)createWhitewHuman;
+ (id <HumanProtocol>)createBlackHuman;

@end


#endif /* HumanFactory_h */
