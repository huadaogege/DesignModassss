//
//  CarDirector.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "CarDirector.h"
#import "BenzBuilder.h"
#import "BmwBuilder.h"

@interface CarDirector ()

@property (nonatomic, strong) NSMutableArray *sequence;

@property (nonatomic, strong) BenzBuilder *benzBuilder;

@property (nonatomic, strong) BmwBuilder *bmwBuilder;

@end

@implementation CarDirector

- (instancetype)init {
    self = [super init];
    if (self) {
        self.benzBuilder = [[BenzBuilder alloc] init];
        self.bmwBuilder = [[BmwBuilder alloc] init];
        self.sequence = [[NSMutableArray alloc] init];
    }
    return self;
}

- (CarModel *)getABenzCarModel {
    [self.sequence removeAllObjects];
    [self.sequence addObject:[NSNumber numberWithInteger:StartType]];
    [self.sequence addObject:[NSNumber numberWithInteger:AlarmType]];
    [self.sequence addObject:[NSNumber numberWithInteger:EngineBoomType]];
    [self.sequence addObject:[NSNumber numberWithInteger:StopType]];
    [self.benzBuilder setSequence:self.sequence];
    return [self.benzBuilder getCarModel];
    
}

- (CarModel *)getABmwCarModel {
    [self.sequence removeAllObjects];
    [self.sequence addObject:[NSNumber numberWithInteger:StartType]];
    [self.sequence addObject:[NSNumber numberWithInteger:EngineBoomType]];
    [self.sequence addObject:[NSNumber numberWithInteger:AlarmType]];
    [self.sequence addObject:[NSNumber numberWithInteger:StopType]];
    [self.bmwBuilder setSequence:self.sequence];
    return [self.bmwBuilder getCarModel];
}

@end
