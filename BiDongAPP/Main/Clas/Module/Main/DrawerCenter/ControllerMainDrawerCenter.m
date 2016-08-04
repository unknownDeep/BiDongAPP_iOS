//
//  ControllerMainDrawerCenter.m
//  BiDongAPP
//
//  Created by zhanghao on 16/7/22.
//  Copyright © 2016年 zhanghao. All rights reserved.
//

#import "ControllerMainDrawerCenter.h"
#import "ControllerDrawer.h"

#import "UIStoryboard+Plug.h"

@interface ControllerMainDrawerCenter ()

@end

@implementation ControllerMainDrawerCenter

+ (instancetype)shareController{
    ControllerMainDrawerCenter *controller = [UIStoryboard xmControllerWithName:xmStoryboardNameMain indentity:@"ControllerMainDrawerCenter"];
    
    return controller;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (IBAction)onClickBtnOpenDrawerLeft:(id)sender {
    [[ControllerDrawer shareController] openOrCloseLeftSideWithCallback:^(BOOL res) {
    }];
}

@end
