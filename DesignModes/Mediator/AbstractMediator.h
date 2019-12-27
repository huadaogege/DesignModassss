//
//  AbstractMediator.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/27.
//  Copyright © 2019 huadao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Purchase.h"
#import "Stock.h"
#import "Sale.h"

NS_ASSUME_NONNULL_BEGIN

@interface AbstractMediator : NSObject

@property (nonatomic, strong) Purchase *purchase;
@property (nonatomic, strong) Stock *stock;
@property (nonatomic, strong) Sale *sale;

- (void)execute:(NSString *)method num:(int)num;

@end

NS_ASSUME_NONNULL_END
