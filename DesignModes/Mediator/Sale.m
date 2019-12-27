//
//  Sale.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/27.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "Sale.h"
#import "Mediator.h"

@implementation Sale

- (void)sale:(AbstractMediator *)mediator {
    super.mediator = mediator;
}

- (void)sellIBMComputer:(int)num {
    [(Mediator *)(super.mediator) execute:@"sale.sell" num:num];
    NSLog(@"销售IBM电脑%d台", num);
}

- (int)getSaleStatus {
    return 86;
}

- (void)offSale {
    [(Mediator *)(super.mediator) execute:@"sale.offsell" num:0];
}

@end
