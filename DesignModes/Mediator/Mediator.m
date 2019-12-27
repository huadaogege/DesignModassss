//
//  Mediator.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/27.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "Mediator.h"

@implementation Mediator

- (void)execute:(NSString *)method num:(int)num {
    if ([method isEqualToString:@"purchase.buy"]) {
        [self buyComputer:num];
    } else if ([method isEqualToString:@"sale.sell"]) {
        [self sellComputer:num];
    } else if ([method isEqualToString:@"sale.offsell"]) {
        [self offSell];
    } else if ([method isEqualToString:@"stock.clear"]) {
        [self clearStock];
    }
}

- (void)buyComputer:(int)num {
    int saleStatus = [super.sale getSaleStatus];
    if (saleStatus > 80) {
        NSLog(@"采购IBM电脑:%d台", num);
        [super.stock increase:num];
    } else {
        int buyNum = num / 2.0;
        NSLog(@"采购IBM电脑:%d台", buyNum);
    }
}

- (void)sellComputer:(int)num {
    if ([super.stock getCurrStock] < num) {
        [super.purchase buyIMBComputer:num];
    }
    [super.stock decrease:num];
}

- (void)offSell {
    NSLog(@"折价销售IBM电脑:%d台", [super.stock getCurrStock]);
}

- (void)clearStock {
    [super.sale offSale];
    [super.purchase refuseBuyIBM];
}

@end
