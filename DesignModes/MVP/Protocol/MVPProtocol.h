//
//  MVPProtocol.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/10/11.
//  Copyright © 2019 huadao. All rights reserved.
//

#ifndef MVPProtocol_h
#define MVPProtocol_h
#import "MVPModel.h"

@protocol MVPProtocol <NSObject>

- (void)updateViewDataSource:(NSArray<MVPModel *>*)data;

- (void)showIndicator;

- (void)hiddenIndicator;

- (void)showEmptyView;

@end

#endif /* MVPProtocol_h */
