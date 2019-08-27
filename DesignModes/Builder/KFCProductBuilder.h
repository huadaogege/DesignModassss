//
//  KFCProductBuilder.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/27.
//  Copyright © 2019 huadao. All rights reserved.
//

#ifndef KFCProductBuilder_h
#define KFCProductBuilder_h
#import <Foundation/Foundation.h>
#import "KFCMeals.h"

@protocol KFCProductBuilder <NSObject>

- (id<KFCProductBuilder>)createDrink:(NSString *)drink;

- (id<KFCProductBuilder>)createFood:(NSString *)food;

- (id<KFCProductBuilder>)createSnack:(NSString *)snack;

- (id<KFCProduct>)createMeals;

@end

#endif /* KFCProductBuilder_h */
