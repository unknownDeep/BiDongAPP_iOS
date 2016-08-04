//
//  CellShowShowPhotos.m
//  BiDongAPP
//
//  Created by zhanghao on 16/7/26.
//  Copyright © 2016年 zhanghao. All rights reserved.
//

#import "CellShowShowPhotos.h"

@interface CellShowShowPhotos()

@property (weak, nonatomic) IBOutlet UIView *viewWrap;

@property (weak, nonatomic) IBOutlet UIImageView *imgViewAngle;
@property (weak, nonatomic) IBOutlet UIImageView *imgViewCover;
@property (weak, nonatomic) IBOutlet UIImageView *imgViewProfile;

@property (weak, nonatomic) IBOutlet UILabel *labelCountOfImg;
@property (weak, nonatomic) IBOutlet UILabel *labelCountOfBrowse;
@property (weak, nonatomic) IBOutlet UILabel *labelCountOfCollection;
@property (weak, nonatomic) IBOutlet UILabel *labelName;


@end
@implementation CellShowShowPhotos

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.viewWrap.layer.cornerRadius = 5;
    self.viewWrap.layer.masksToBounds = YES;
}

- (IBAction)onClickBtnProfile:(id)sender {
}

@end
