//
//  MVPModel.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/10/11.
//  Copyright © 2019 huadao. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MVPModel : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *age;
@property (nonatomic, strong) NSString *addr;
@property (nonatomic, strong) NSString *gender;

- (instancetype)initWithDict:(NSDictionary *)dict;

+ (instancetype)modelWithDict:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
