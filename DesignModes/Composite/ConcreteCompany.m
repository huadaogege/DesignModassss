//
//  ConcreteCompany.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "ConcreteCompany.h"

@interface ConcreteCompany ()

@property (nonatomic, strong) NSMutableArray *children;

@end

@implementation ConcreteCompany

@synthesize name = _name;

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        self.name = name;
        self.children = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addChild:(id<Company>)company {
    if (company) {
        [self.children addObject:company];
    }
}

- (void)removeChild:(id<Company>)company {
    [self.children removeObject:company];
}

- (void)display {
    NSLog(@"%@的子公司", self.name);
    for (id<Company> company in self.children) {
        [company display];
    }
}

- (void)lineOfDuty {
    NSLog(@"%@的子公司的职责", self.name);
    for (id<Company> company in self.children) {
        [company lineOfDuty];
    }
}

@end
