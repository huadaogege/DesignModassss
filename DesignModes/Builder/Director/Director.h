//
//  Director.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/8/27.
//  Copyright © 2019 huadao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KFCProductBuilder.h"

NS_ASSUME_NONNULL_BEGIN

@interface Director : NSObject <KFCProductBuilder>

- (instancetype)initWithBuilder:(id<KFCProductBuilder>)builder;

- (void)createDrink:(NSString *)drink
               food:(NSString *)food
              snack:(NSString *)snack;

@end

NS_ASSUME_NONNULL_END
