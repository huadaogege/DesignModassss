//
//  CMVVMTableDataSource.h
//  DesignModes
//
//  Created by 崔玉冠 on 2019/9/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CMVVMViewCell.h"
#import "CMVVMModel.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^dataSourceBlock)(CMVVMViewCell *cell, CMVVMModel *model, NSIndexPath *indexPath);

@interface CMVVMTableDataSource : NSObject <UITableViewDataSource>

- (instancetype)initWithIdentifier:(NSString *)identifier dataSource:(dataSourceBlock)dataSource;

@property (nonatomic, strong) NSArray *datas;

@end

NS_ASSUME_NONNULL_END
