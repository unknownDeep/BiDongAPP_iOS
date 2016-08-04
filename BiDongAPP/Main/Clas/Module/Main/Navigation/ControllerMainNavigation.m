//
//  ControllerMainNavigation.m
//  BiDongAPP
//
//  Created by zhanghao on 16/7/22.
//  Copyright © 2016年 zhanghao. All rights reserved.
//

#import "ControllerMainNavigation.h"

#import "ControllerDrawer.h"

@interface ControllerMainNavigation ()

@end

@implementation ControllerMainNavigation

+ (instancetype)shareController{
    static ControllerMainNavigation *controller;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        controller = [[ControllerMainNavigation alloc] init];
    });
    
    return controller;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavigationBarHidden:YES animated:NO];
    
    [self pushViewController:[ControllerDrawer shareController] animated:NO];
}

@end
