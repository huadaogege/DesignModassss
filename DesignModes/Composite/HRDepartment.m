//
//  HRDepartment.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "HRDepartment.h"

@implementation HRDepartment

@synthesize name = _name;

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

- (void)addChild:(id<Company>)company {
    
}

- (void)removeChild:(id<Company>)company {
    
}

- (void)display {
    NSLog(@"  %@的HR部门.", self.name);
}

- (void)lineOfDuty {
    NSLog(@"  %@:培训、招聘、解聘员工.", self.name);
}

@end
