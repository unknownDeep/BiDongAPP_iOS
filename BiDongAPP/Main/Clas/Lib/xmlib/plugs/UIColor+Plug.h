//
//  UIColor+Plug.h
//  MeetU
//
//  Created by zhanghao on 15/8/17.
//  Copyright (c) 2015年 U-Plus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor(Plug)

#pragma mark - 常用颜色
+ (instancetype)xmOften_000000:(float)alpha;

+ (instancetype)xmOften_151515:(float)alpha;

+ (instancetype)xmOften_007AFF:(float)alpha;

+ (instancetype)xmOften_606366:(float)alpha;

+ (instancetype)xmOften_AAAAAA:(float)alpha;

+ (instancetype)xmOften_CCCCCC:(float)alpha;

+ (instancetype)xmOften_FF5CFF:(float)alpha;

+ (instancetype)xmOften_FFFFFF:(float)alpha;

+ (instancetype)xmOften_808080:(float)alpha;

+ (instancetype)xmOften_F06E7F:(float)alpha;

+ (instancetype)xmOften_FB2B08:(float)alpha;

+ (instancetype)xmOften_F8F6F4:(float)alpha;

+ (instancetype)xmOften_ECF1F0:(float)alpha;

+ (UIColor*)xmColorWithR:(CGFloat)r G:(CGFloat)g B:(CGFloat)b A:(CGFloat)a;

+ (UIColor*)xmColorWithR:(CGFloat)r G:(CGFloat)g B:(CGFloat)b;

/**
 * 没有透明RGB颜色 RRGGBB
 */
+ (instancetype)xmColorWithHexStrRGB:(NSString*)colorStr;
/**
 * 有透明RGBA颜色 RRGGBBAA
 */
+ (instancetype)xmColorWithHexStrRGBA:(NSString*)colorStr;
/**
 * 有透明RGB颜色 RRGGBB，alpha为透明度（0~1.0）
 */
+ (instancetype)xmColorWithHexStrRGB:(NSString*)colorStr alpha:(CGFloat)alpha;

@end
