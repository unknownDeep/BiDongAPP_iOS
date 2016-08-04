//
//  ControllerShowShowTabbar.m
//  BiDongAPP
//
//  Created by zhanghao on 16/7/26.
//  Copyright © 2016年 zhanghao. All rights reserved.
//

#import "ControllerShowShowTabbar.h"

#import "ControllerShowShowNavi.h"
#import "ControllerShowShowPhotos.h"
#import "ControllerShowShowVideos.h"
#import "ControllerShowShowList.h"
#import "ControllerShowShowMine.h"

@interface ControllerShowShowTabbar ()

@property (nonatomic, strong) ControllerShowShowPhotos *controllerPhotos;
@property (nonatomic, strong) ControllerShowShowVideos *controllerVideos;
@property (nonatomic, strong) ControllerShowShowList *controllerList;
@property (nonatomic, strong) ControllerShowShowMine *controllerMine;

@end

@implementation ControllerShowShowTabbar

+ (instancetype)shareController{
    static ControllerShowShowTabbar *controller;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        controller = [[ControllerShowShowTabbar alloc] init];
    });
    
    return controller;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.controllerPhotos = [ControllerShowShowPhotos shareController];
    ControllerShowShowNavi *controllerNaviPhotos = [ControllerShowShowNavi getControllerWithController:self.controllerPhotos];
    controllerNaviPhotos.tabBarItem.title = @"小图片";
    controllerNaviPhotos.tabBarItem.image = [[UIImage imageNamed:@"tabbar_show_photo_nor"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controllerNaviPhotos.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_show_photo_sel"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.controllerVideos = [ControllerShowShowVideos shareController];
    ControllerShowShowNavi *controllerNaviVideos = [ControllerShowShowNavi getControllerWithController:self.controllerVideos];
    controllerNaviVideos.tabBarItem.title = @"小视频";
    controllerNaviVideos.tabBarItem.image = [[UIImage imageNamed:@"tabbar_show_tv_nor"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controllerNaviVideos.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_show_tv_sel"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.controllerList = [ControllerShowShowList shareController];
    ControllerShowShowNavi *controllerNaviList = [ControllerShowShowNavi getControllerWithController:self.controllerList];
    controllerNaviList.tabBarItem.title = @"美人榜";
    controllerNaviList.tabBarItem.image = [[UIImage imageNamed:@"tabbar_show_belle_nor"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controllerNaviList.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_show_belle_sel"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.controllerMine = [ControllerShowShowMine shareController];
    ControllerShowShowNavi *controllerNaviMine = [ControllerShowShowNavi getControllerWithController:self.controllerMine];
    controllerNaviMine.tabBarItem.title = @"我的";
    controllerNaviMine.tabBarItem.image = [[UIImage imageNamed:@"tabbar_global_mine_nor"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controllerNaviMine.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_global_mine_sel"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.viewControllers = @[controllerNaviPhotos, controllerNaviVideos, controllerNaviList, controllerNaviMine];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
