//
//  Stock.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/27.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "Stock.h"
#import "Mediator.h"

@implementation Stock

static int Computer_Number = 100;

- (void)stock:(AbstractMediator *)mediator {
    super.mediator = mediator;
}

- (void)increase:(int)num {
    Computer_Number += num;
    NSLog(@"库存数量为:%d台", Computer_Number);
}

- (void)decrease:(int)num {
    Computer_Number -= num;
    NSLog(@"库存数量为:%d台", Computer_Number);
}

- (int)getCurrStock {
    return Computer_Number;
}

- (void)clearStock {
    NSLog(@"清理存货数量为:%d", Computer_Number);
    [(Mediator *)(super.mediator) execute:@"stock.clear" num:0];
}


@end
