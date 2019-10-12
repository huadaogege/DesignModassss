//
//  MVPNetworkManager.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/10/11.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "MVPNetworkManager.h"

@implementation MVPNetworkManager

- (void)requestUsersInfoSuccess:(Success)success failure:(Failure)failure {
    NSArray *result = @[@{@"name":@"Tom",
                          @"age":@25,
                          @"addr":@"GuangZhou",
                          @"gender":@"male",
                          },
                        @{@"name":@"Jerry",
                          @"age":@22,
                          @"addr":@"Hangzhou",
                          @"gender":@"male",
                          },
                        @{@"name":@"Lucy",
                          @"age":@25,
                          @"addr":@"Didu",
                          @"gender":@"female",
                          }];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3*NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (success) {
            success(@{@"data":result});
        }
    });
}

@end
