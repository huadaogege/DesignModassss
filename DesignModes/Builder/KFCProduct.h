//
//  KFCProduct.h
//  DesignModes
//
//  Created by Cyg on 2019/8/27.
//  Copyright © 2019 huadao. All rights reserved.
//

#ifndef KFCProduct_h
#define KFCProduct_h
#import <Foundation/Foundation.h>

@protocol KFCProduct <NSObject>

- (void)drink:(NSString *)drink;

- (void)food:(NSString *)food;

- (void)snack:(NSString *)snack;

@end

#endif /* KFCProduct_h */
