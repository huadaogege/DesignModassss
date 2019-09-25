//
//  CMVVMViewModel.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/9/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^Success)(NSArray *datas);

typedef void(^Failure)(void);

@interface CMVVMViewModel : NSObject

@property (nonatomic, copy) NSString *selectName;

@property (nonatomic, strong) NSMutableArray *datas;

- (instancetype)initWithSuccess:(Success)success failure:(Failure)failure;

- (void)refreshDataAction;

@end

NS_ASSUME_NONNULL_END
