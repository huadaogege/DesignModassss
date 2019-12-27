//
//  AbstractColleague.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/27.
//  Copyright © 2019 huadao. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AbstractMediator;

NS_ASSUME_NONNULL_BEGIN

@interface AbstractColleague : NSObject

- (void)abstractColleague:(AbstractMediator *)mediator;

@property (nonatomic, strong) AbstractMediator *mediator;

@end

NS_ASSUME_NONNULL_END
