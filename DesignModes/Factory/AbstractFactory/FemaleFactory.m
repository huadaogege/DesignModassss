//
//  FemaleFactory.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/23.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "FemaleFactory.h"
#import "FemaleYellowHuman.h"
#import "FemaleWhiteHuman.h"
#import "FemaleBlackHuman.h"

@implementation FemaleFactory

+ (id)createYellowHuman {
    return [[FemaleYellowHuman alloc] init];
}

+ (id)createWhitewHuman {
    return [[FemaleWhiteHuman alloc] init];
}

+ (id)createBlackHuman {
    return [[FemaleBlackHuman alloc] init];
}

@end
