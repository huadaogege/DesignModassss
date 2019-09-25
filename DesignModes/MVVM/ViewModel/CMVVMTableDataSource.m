//
//  CMVVMTableDataSource.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/9/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "CMVVMTableDataSource.h"

@interface CMVVMTableDataSource ()

@property (nonatomic, strong) NSString *identifier;

@property (nonatomic, copy) dataSourceBlock dataSource;

@end

@implementation CMVVMTableDataSource

- (instancetype)initWithIdentifier:(NSString *)identifier dataSource:(dataSourceBlock)dataSource {
    self = [super init];
    if (self) {
        self.identifier = identifier;
        self.dataSource = dataSource;
    }
    return self;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CMVVMViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.identifier];
    if (!cell) {
        cell = [[CMVVMViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:self.identifier];
    }
    if (self.dataSource) {
        self.dataSource(cell, self.datas[indexPath.row], indexPath);
    }
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.datas.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


@end
