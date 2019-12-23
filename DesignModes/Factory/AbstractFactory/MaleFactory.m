//
//  MaleFactory.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/23.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "MaleFactory.h"
#import "MaleYellowHuman.h"
#import "MaleWhiteHuman.h"
#import "MaleBlackHuman.h"

@implementation MaleFactory

+ (id)createYellowHuman {
    return [[MaleYellowHuman alloc] init];
}

+ (id)createWhitewHuman {
    return [[MaleWhiteHuman alloc] init];
}

+ (id)createBlackHuman {
    return [[MaleBlackHuman alloc] init];
}


@end
