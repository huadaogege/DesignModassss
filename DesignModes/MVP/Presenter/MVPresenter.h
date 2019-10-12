//
//  MVPresenter.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/10/11.
//  Copyright © 2019 huadao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVPProtocol.h"
#import "MVPModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MVPresenter : NSObject

- (void)attachViewDelegate:(id<MVPProtocol>)viewDelegate;

- (void)freshData;

@end

NS_ASSUME_NONNULL_END
