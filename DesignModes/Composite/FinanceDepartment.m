//
//  FinanceCompany.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "FinanceDepartment.h"

@implementation FinanceDepartment

@synthesize name =_name;

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
    NSLog(@"  %@的财务部门.", self.name);
}

- (void)lineOfDuty {
    NSLog(@"  %@:给员工发工资.", self.name);
}

@end
