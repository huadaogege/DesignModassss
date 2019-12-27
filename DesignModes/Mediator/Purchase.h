//
//  Purchase.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/27.
//  Copyright © 2019 huadao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractColleague.h"

NS_ASSUME_NONNULL_BEGIN

@interface Purchase : AbstractColleague

- (void)purchase:(AbstractMediator *)mediator;

- (void)buyIMBComputer:(int)num;

- (void)refuseBuyIBM;

@end

NS_ASSUME_NONNULL_END
