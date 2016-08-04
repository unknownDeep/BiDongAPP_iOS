//
//  ControllerShowShowVideo.m
//  BiDongAPP
//
//  Created by zhanghao on 16/7/26.
//  Copyright © 2016年 zhanghao. All rights reserved.
//

#import "ControllerShowShowVideos.h"

#import "UIStoryboard+Plug.h"

#import "ControllerDrawer.h"

@interface ControllerShowShowVideos ()

@end

@implementation ControllerShowShowVideos

+ (instancetype)shareController{
    static ControllerShowShowVideos *controller;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        controller = [UIStoryboard xmControllerWithName:xmStoryboardNameShowShow indentity:@"ControllerShowShowVideos"];
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
