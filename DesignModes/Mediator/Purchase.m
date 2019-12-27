//
//  Purchase.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/27.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "Purchase.h"
#import "Mediator.h"

@implementation Purchase

- (void)purchase:(AbstractMediator *)mediator {
    super.mediator = mediator;
}

- (void)buyIMBComputer:(int)num {
    [(Mediator *)(super.mediator) execute:@"purchase.buy" num:1];
}

- (void)refuseBuyIBM {
    NSLog(@"不再采购IBM电脑");
}

@end
