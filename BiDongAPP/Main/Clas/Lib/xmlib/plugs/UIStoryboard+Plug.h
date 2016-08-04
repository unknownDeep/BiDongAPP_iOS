//
//  UIStoryboard+Plug.h
//  MeetU_iOS
//
//  Created by zhanghao on 15/7/14.
//  Copyright (c) 2015年 U-Plus. All rights reserved.
//

#import <UIKit/UIKit.h>

#define xmStoryboardNameMain @"Main"
#define xmStoryboardNameMine @"Mine"
#define xmStoryboardNameMarket @"Market"

#define xmStoryboardNameShowShow @"ShowShow"

@interface UIStoryboard(Plug)

+(id)xmControllerWithName:(NSString*)name indentity:(NSString*)indentity;

@end
