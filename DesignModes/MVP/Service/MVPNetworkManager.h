//
//  MVPNetworkManager.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/10/11.
//  Copyright © 2019 huadao. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^Success)(NSDictionary *response);
typedef void(^Failure)(NSDictionary *response);

@interface MVPNetworkManager : NSObject

- (void)requestUsersInfoSuccess:(Success)success failure:(Failure)failure;

@end

NS_ASSUME_NONNULL_END
