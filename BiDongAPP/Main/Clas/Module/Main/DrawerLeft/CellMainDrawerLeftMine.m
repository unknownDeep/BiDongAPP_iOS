//
//  CellMainDrawerLeftMine.m
//  BiDongAPP
//
//  Created by zhanghao on 16/7/26.
//  Copyright © 2016年 zhanghao. All rights reserved.
//

#import "CellMainDrawerLeftMine.h"


@interface CellMainDrawerLeftMine()

@property (weak, nonatomic) IBOutlet UIView *viewProfileBG;
@property (weak, nonatomic) IBOutlet UIImageView *imgViewProfile;


@end
@implementation CellMainDrawerLeftMine

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.viewProfileBG.layer.cornerRadius = 21;
    self.viewProfileBG.layer.masksToBounds = YES;
    self.imgViewProfile.layer.cornerRadius = 20;
    self.imgViewProfile.layer.masksToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (IBAction)onClickBtnProfile:(id)sender {
    if (self.delegateCell) {
        if ([self.delegateCell respondsToSelector:@selector(cellMainDrawerLeftMine:onClickBtnProfile:)]) {
            [self.delegateCell cellMainDrawerLeftMine:self onClickBtnProfile:sender];
        }
    }
}

- (IBAction)onClickBtnHomepage:(id)sender {
    if (self.delegateCell) {
        if ([self.delegateCell respondsToSelector:@selector(cellMainDrawerLeftMine:onClickBtnHomepage:)]) {
            [self.delegateCell cellMainDrawerLeftMine:self onClickBtnHomepage:sender];
        }
    }
}

@end
