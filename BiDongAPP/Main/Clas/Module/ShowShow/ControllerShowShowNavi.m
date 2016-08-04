//
//  ControllerShowShowNavi.m
//  BiDongAPP
//
//  Created by zhanghao on 16/7/26.
//  Copyright © 2016年 zhanghao. All rights reserved.
//

#import "ControllerShowShowNavi.h"

@interface ControllerShowShowNavi ()

@end

@implementation ControllerShowShowNavi

+ (instancetype)getControllerWithController:(UIViewController *)controller{
    ControllerShowShowNavi *controllerNavi = [[ControllerShowShowNavi alloc] init];
    [controllerNavi pushViewController:controller animated:NO];
    
    return controllerNavi;
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationBar setHidden:YES];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    [super pushViewController:viewController animated:animated];
    
    self.tabBarController.tabBar.hidden = (self.viewControllers.count > 1);
}

- (UIViewController *)popViewControllerAnimated:(BOOL)animated{
    UIViewController *controller = [super popViewControllerAnimated:animated];
    
    self.tabBarController.tabBar.hidden = (self.viewControllers.count > 1);
    
    return controller;
}

- (NSArray<UIViewController *> *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated{
    NSArray<UIViewController *> *controllers = [super popToViewController:viewController animated:animated];
    
    self.tabBarController.tabBar.hidden = (self.viewControllers.count > 1);
    
    return controllers;
}

- (NSArray<UIViewController *> *)popToRootViewControllerAnimated:(BOOL)animated{
    NSArray<UIViewController *> *controllers = [super popToRootViewControllerAnimated:animated];
    
    self.tabBarController.tabBar.hidden = (self.viewControllers.count > 1);
    
    return controllers;
}

@end
