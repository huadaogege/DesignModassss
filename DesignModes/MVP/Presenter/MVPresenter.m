//
//  MVPresenter.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/10/11.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "MVPresenter.h"
#import "MVPNetworkManager.h"

@interface MVPresenter ()

@property (nonatomic, strong) MVPNetworkManager *network;

@property (nonatomic, weak) id <MVPProtocol> viewDelegate;

@end

@implementation MVPresenter

- (void)attachViewDelegate:(id<MVPProtocol>)viewDelegate {
    self.viewDelegate = viewDelegate;
    self.network = [[MVPNetworkManager alloc] init];
}

- (void)freshData {
    [self getUserModels];
}

- (void)getUserModels {
    [self.viewDelegate showIndicator];
    [self.network requestUsersInfoSuccess:^(NSDictionary * _Nonnull response) {
        [self.viewDelegate hiddenIndicator];
        NSArray *userData = response[@"data"];
        NSArray *userModels = [self userModelsFromOriginData:userData];
        if (userModels.count == 0) {
            [self.viewDelegate showEmptyView];
        }
        [self.viewDelegate updateViewDataSource:userModels];
    } failure:^(NSDictionary * _Nonnull response) {
        [self.viewDelegate showEmptyView];
        [self.viewDelegate updateViewDataSource:nil];
    }];
}

- (NSArray<MVPModel *>*)userModelsFromOriginData:(NSArray *)userData {
    NSMutableArray<MVPModel *> *userModels = [[NSMutableArray alloc] init];
    for (NSDictionary *dict in userData) {
        MVPModel *model = [MVPModel modelWithDict:dict];
        [userModels addObject:model];
    }
    return userModels;
}

@end
