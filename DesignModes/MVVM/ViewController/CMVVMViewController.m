//
//  CMVVMViewController.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/9/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "CMVVMViewController.h"
#import "CMVVMViewModel.h"
#import "CMVVMTableDataSource.h"

@interface CMVVMViewController () <UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) CMVVMTableDataSource *dataSource;

@property (nonatomic, strong) CMVVMViewModel *viewModel;

@property (nonatomic, strong) UIButton *refreshBtn;

@end

@implementation CMVVMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self bindModel];
    [self setupViews];
}

- (void)bindModel {
    __weak typeof(self) weakSelf = self;
    // DataSource抽出来, 解耦
    self.dataSource = [[CMVVMTableDataSource alloc] initWithIdentifier:@"cmvvmcell" dataSource:^(CMVVMViewCell * _Nonnull cell, CMVVMModel * _Nonnull model, NSIndexPath * _Nonnull indexPath) {
        cell.cTitleLabel.text = model.ctitle;
        cell.cDescriptionLabel.text = model.cdescription;
    }];
    self.viewModel = [[CMVVMViewModel alloc] initWithSuccess:^(NSArray *datas) {
        weakSelf.refreshBtn.hidden = YES;
        weakSelf.dataSource.datas = datas;
        [weakSelf.tableView reloadData];
        if (datas.count == 0) {
            weakSelf.refreshBtn.enabled = YES;
            weakSelf.refreshBtn.hidden = NO;
        }
    } failure:^{
    }];
}

- (void)setupViews {
    [self.view addSubview:self.tableView];
    [self.view addSubview:self.refreshBtn];
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self.dataSource;
    }
    return _tableView;
}

- (UIButton *)refreshBtn {
    if (!_refreshBtn) {
        _refreshBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 50)];
        [_refreshBtn setTitle:@"加载数据" forState:UIControlStateNormal];
        [_refreshBtn setTitle:@"加载中..." forState:UIControlStateDisabled];
        [_refreshBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_refreshBtn setTitleColor:[UIColor grayColor] forState:UIControlStateDisabled];
        _refreshBtn.center = self.view.center;
        [_refreshBtn addTarget:self
                        action:@selector(refreshBtnAction)
              forControlEvents:UIControlEventTouchUpInside];
    }
    return _refreshBtn;
}

- (void)refreshBtnAction{
    self.refreshBtn.enabled = NO;
    [self.viewModel refreshDataAction];
}

#pragma mark -- TableViewDelegate --

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    CMVVMModel *model = self.dataSource.datas[indexPath.row];
    self.viewModel.selectName = model.ctitle;
}

@end
