//
//  CellMainDrawerLeftCommon.m
//  BiDongAPP
//
//  Created by zhanghao on 16/7/26.
//  Copyright © 2016年 zhanghao. All rights reserved.
//

#import "CellMainDrawerLeftCommon.h"

@interface CellMainDrawerLeftCommon()

@property (weak, nonatomic) IBOutlet UIImageView *imgViewPoint;
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;

@end
@implementation CellMainDrawerLeftCommon

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setPointColor6cd1c9AndTitle:(NSString *)title{
    [self.imgViewPoint setImage:[UIImage imageNamed:@"global_point_6cd1c9"]];
    [self.labelTitle setText:title];
}

- (void)setPointColor888888AndTitle:(NSString *)title{
    [self.imgViewPoint setImage:[UIImage imageNamed:@"global_point_888888"]];
    [self.labelTitle setText:title];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
