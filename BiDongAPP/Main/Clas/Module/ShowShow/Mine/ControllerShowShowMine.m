//
//  ControllerShowShowMine.m
//  BiDongAPP
//
//  Created by zhanghao on 16/7/26.
//  Copyright © 2016年 zhanghao. All rights reserved.
//

#import "ControllerShowShowMine.h"

#import "UIStoryboard+Plug.h"

#import "ControllerDrawer.h"

@interface ControllerShowShowMine ()

@end

@implementation ControllerShowShowMine

+ (instancetype)shareController{
    static ControllerShowShowMine *controller;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        controller = [UIStoryboard xmControllerWithName:xmStoryboardNameShowShow indentity:@"ControllerShowShowMine"];
    });
    
    return controller;
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onClickBtnOpenDrawerLeft:(id)sender {
    [[ControllerDrawer shareController] openOrCloseLeftSideWithCallback:^(BOOL res) {
    }];
}

@end
