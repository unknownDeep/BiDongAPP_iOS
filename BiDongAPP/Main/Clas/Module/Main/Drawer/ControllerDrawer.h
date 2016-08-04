//
//  ControllerDrawer.h
//  BiDongAPP
//
//  Created by zhanghao on 16/7/22.
//  Copyright © 2016年 zhanghao. All rights reserved.
//

#import <MMDrawerController/MMDrawerController.h>

@interface ControllerDrawer : MMDrawerController

+ (instancetype)shareController;
- (void)openOrCloseLeftSideWithCallback:(void(^)(BOOL res))callback;
- (void)changeCenterController:(UIViewController*)controller completion:(void (^)(BOOL))completion;
@end
