//
//  AbstractSchoolReport.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/12/28.
//  Copyright © 2019 huadao. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AbstractSchoolReport : NSObject

- (void)report;

- (void)sign:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
