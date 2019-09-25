//
//  CMVVMViewCell.m
//  DesignModes
//
//  Created by 崔玉冠 on 2019/9/25.
//  Copyright © 2019 huadao. All rights reserved.
//

#import "CMVVMViewCell.h"

@implementation CMVVMViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupViews];
    }
    return self;
}

- (void)setupViews {
    [self addSubview:self.cTitleLabel];
    [self addSubview:self.cDescriptionLabel];
}

- (UILabel *)cTitleLabel {
    if (!_cTitleLabel) {
        _cTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20.0,
                                                                 (self.frame.size.height-40)/2.0,
                                                                 80,
                                                                 40.0)];
        _cTitleLabel.font = [UIFont systemFontOfSize:20.0];
        _cTitleLabel.textColor = [UIColor yellowColor];
    }
    return _cTitleLabel;
}

- (UILabel *)cDescriptionLabel {
    if (!_cDescriptionLabel) {
        _cDescriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(20.0+80.0+10.0,
                                                                       (self.frame.size.height-40)/2.0,
                                                                       100.0,
                                                                       40.0)];
        _cDescriptionLabel.font = [UIFont systemFontOfSize:20.0];
        _cDescriptionLabel.textColor = [UIColor redColor];
    }
    return _cDescriptionLabel;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
