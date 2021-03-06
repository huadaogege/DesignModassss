//
//  Decorator.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/30.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "Component.h"

NS_ASSUME_NONNULL_BEGIN

@interface Decorator : Component

@property(nonatomic, strong) Component *component;

- (Component *)decorator:(Component *)component;

@end

NS_ASSUME_NONNULL_END
