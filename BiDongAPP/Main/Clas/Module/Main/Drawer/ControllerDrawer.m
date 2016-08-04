//
//  ControllerDrawer.m
//  BiDongAPP
//
//  Created by zhanghao on 16/7/22.
//  Copyright © 2016年 zhanghao. All rights reserved.
//

#import "ControllerDrawer.h"

#import "ControllerMainDrawerCenter.h"
#import "ControllerMainDrawerLeft.h"

typedef void(^OpenOrCloseLeftSideCallback)(BOOL res);

@interface ControllerDrawer ()

//当前左控制器是否是打开状态
@property (nonatomic, assign) BOOL isOpenLeftSide;
//中间控制器遮罩（当打开两侧控制器时，罩住中间控制器）
@property (nonatomic, strong) UIView *viewCenterControllerMask;

@property (nonatomic, copy) OpenOrCloseLeftSideCallback openOrCloseLeftSideCallback;

@property (nonatomic, strong) ControllerMainDrawerCenter *controllerMainDrawerCenter;
@property (nonatomic, strong) ControllerMainDrawerLeft *controllerMainDrawerLeft;
@end

@implementation ControllerDrawer

+ (instancetype)shareController{
    static ControllerDrawer *controllerDrawer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        controllerDrawer = [[ControllerDrawer alloc] init];
    });
    return controllerDrawer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.centerViewController = [ControllerMainDrawerCenter shareController];
    self.leftDrawerViewController = [ControllerMainDrawerLeft shareController];
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (CGFloat)maximumLeftDrawerWidth{
    return 240;
}

- (void)setCenterViewController:(UIViewController *)newCenterViewController withFullCloseAnimation:(BOOL)fullCloseAnimated completion:(void (^)(BOOL))completion{
    [super setCenterViewController:newCenterViewController withFullCloseAnimation:fullCloseAnimated completion:completion];
    
    self.isOpenLeftSide = NO;
    [self.viewCenterControllerMask removeFromSuperview];
    self.openOrCloseLeftSideCallback = nil;
}

- (void)changeCenterController:(UIViewController *)controller completion:(void (^)(BOOL))completion{
    [self setCenterViewController:controller withFullCloseAnimation:YES completion:^(BOOL finished) {
        completion(finished);
    }];
}

- (void)openOrCloseLeftSideWithCallback:(void(^)(BOOL res))callback{
    self.isOpenLeftSide = !self.isOpenLeftSide;
    self.openOrCloseLeftSideCallback = callback;
    
    if (self.isOpenLeftSide) {
        [self.view addSubview:self.viewCenterControllerMask];
        [self openDrawerSide:MMDrawerSideLeft animated:YES completion:^(BOOL finished) {
            callback (self.isOpenLeftSide);
        }];
    }else{
        [self closeDrawerAnimated:YES completion:^(BOOL finished) {
            callback (self.isOpenLeftSide);
            self.openOrCloseLeftSideCallback = nil;
        }];
    }
}

- (UIView *)viewCenterControllerMask{
    if (!_viewCenterControllerMask) {
        CGSize screenSize = [UIScreen mainScreen].bounds.size;
        _viewCenterControllerMask = [[UIView alloc] initWithFrame:CGRectMake(self.maximumLeftDrawerWidth, 0, screenSize.width, screenSize.height)];
        _viewCenterControllerMask.userInteractionEnabled = YES;
        UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTapViewCenterControllerMask:)];
        [_viewCenterControllerMask addGestureRecognizer:tapGestureRecognizer];
        
        //增加毛玻璃效果
        UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
        UIVisualEffectView *visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        visualEffectView.frame = CGRectMake(self.maximumLeftDrawerWidth, 64, screenSize.width, screenSize.height);
        
        [_viewCenterControllerMask addSubview:visualEffectView];
    }
    return _viewCenterControllerMask;
}

- (void)onTapViewCenterControllerMask:(UITapGestureRecognizer*)gestureRecognizer{
    [self.viewCenterControllerMask removeFromSuperview];
    self.isOpenLeftSide = NO;
    [self closeDrawerAnimated:YES completion:^(BOOL finished) {
        self.openOrCloseLeftSideCallback (NO);
        self.openOrCloseLeftSideCallback = nil;
    }];
}
@end
