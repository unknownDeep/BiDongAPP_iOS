//
//  ControllerShowShowListDetails.m
//  BiDongAPP
//
//  Created by zhanghao on 16/7/27.
//  Copyright © 2016年 zhanghao. All rights reserved.
//

#import "ControllerShowShowListDetails.h"

#import "UIColor+Plug.h"

@interface ControllerShowShowListDetails ()

@property (weak, nonatomic) IBOutlet UIView *viewNavigation;
@property (weak, nonatomic) IBOutlet UILabel *labelNavigationName;
@property (weak, nonatomic) IBOutlet UIImageView *imgViewHeaderViewBG;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraintHeaderViewBGMarginTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraintHeaderViewBGHeight;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;


@end

@implementation ControllerShowShowListDetails

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewNavigation.backgroundColor = [UIColor clearColor];
    self.collectionView.backgroundColor = [UIColor clearColor];
}

- (IBAction)onClickBtnBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}


@end
