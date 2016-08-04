//
//  UIColor+Plug.m
//  MeetU
//
//  Created by zhanghao on 15/8/17.
//  Copyright (c) 2015年 U-Plus. All rights reserved.
//

#import "UIColor+Plug.h"
#import "NSString+Plug.h"

@implementation UIColor(Plug)

+ (instancetype)xmOften_000000:(float)alpha{
    return [UIColor colorWithRed:0 green:0 blue:0 alpha:alpha];
}

+ (instancetype)xmOften_151515:(float)alpha{
    return [UIColor colorWithRed:21/255.0 green:21/255.0 blue:21/255.0 alpha:alpha];
}

+ (instancetype)xmOften_007AFF:(float)alpha{
    return [UIColor colorWithRed:0 green:122/255.0 blue:1 alpha:alpha];
}

+ (instancetype)xmOften_FFFFFF:(float)alpha{
    return [UIColor colorWithRed:1 green:1 blue:1 alpha:alpha];
}


+ (instancetype)xmOften_808080:(float)alpha{
    return [UIColor colorWithRed:128/255.0 green:128/255.0 blue:128/255.0 alpha:alpha];
}

+ (instancetype)xmOften_AAAAAA:(float)alpha{
    return [UIColor xmColorWithR:170 G:170 B:170 A:alpha];
}

+ (instancetype)xmOften_CCCCCC:(float)alpha{
    return [UIColor xmColorWithR:191 G:191 B:191 A:alpha];
}

+ (instancetype)xmOften_F06E7F:(float)alpha{
    return [UIColor colorWithRed:240/255.0 green:110/255.0 blue:127/255.0 alpha:alpha];
}

+ (instancetype)xmOften_FF5CFF:(float)alpha{
    return [UIColor colorWithRed:1.0 green:92/255.0 blue:1.0 alpha:alpha];
}

+ (instancetype)xmOften_FB2B08:(float)alpha{
    return [UIColor colorWithRed:251/255.0 green:43/255.0 blue:8/255.0 alpha:alpha];
}

+ (instancetype)xmOften_F8F6F4:(float)alpha{
    return [UIColor colorWithRed:248/255.0 green:246/255.0 blue:244/255.0 alpha:alpha];
}

+ (instancetype)xmOften_ECF1F0:(float)alpha{
    return [UIColor colorWithRed:236/255.0 green:241/255.0 blue:240/255.0 alpha:alpha];
}

+ (UIColor*)xmColorWithR:(CGFloat)r G:(CGFloat)g B:(CGFloat)b A:(CGFloat)a{
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a];
}

+ (UIColor*)xmColorWithR:(CGFloat)r G:(CGFloat)g B:(CGFloat)b{
    return [UIColor xmColorWithR:r G:g B:b A:1];
}

+ (instancetype)xmColorWithHexStrRGB:(NSString *)colorStr{
    UIColor *color;
    
    if (colorStr.length == 6) {
        
        NSInteger r = [NSString hexNumberWithString:[colorStr substringWithRange:NSMakeRange(0, 2)]];
        NSInteger g = [NSString hexNumberWithString:[colorStr substringWithRange:NSMakeRange(2, 2)]];
        NSInteger b = [NSString hexNumberWithString:[colorStr substringWithRange:NSMakeRange(4, 2)]];
        
        color = [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0];
    }else{
        color = [UIColor redColor];
    }
    
    return color;
}

+ (instancetype)xmColorWithHexStrRGBA:(NSString *)colorStr{
    UIColor *color;
    
    if (colorStr.length == 8) {
        
        NSInteger r = [NSString hexNumberWithString:[colorStr substringWithRange:NSMakeRange(0, 2)]];
        NSInteger g = [NSString hexNumberWithString:[colorStr substringWithRange:NSMakeRange(2, 2)]];
        NSInteger b = [NSString hexNumberWithString:[colorStr substringWithRange:NSMakeRange(4, 2)]];
        NSInteger a = [NSString hexNumberWithString:[colorStr substringWithRange:NSMakeRange(6, 2)]];
        
        color = [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a/255.0];
    }else{
        color = [UIColor redColor];
    }
    
    return color;
}

+ (instancetype)xmColorWithHexStrRGB:(NSString*)colorStr alpha:(CGFloat)alpha{
    UIColor *color;
    
    if (colorStr.length == 6) {
        //透明度小于0
        alpha = alpha<0?0:alpha;
        //透明度大于1
        alpha = alpha>1?1:alpha;
        
        NSInteger r = [NSString hexNumberWithString:[colorStr substringWithRange:NSMakeRange(0, 2)]];
        NSInteger g = [NSString hexNumberWithString:[colorStr substringWithRange:NSMakeRange(2, 2)]];
        NSInteger b = [NSString hexNumberWithString:[colorStr substringWithRange:NSMakeRange(4, 2)]];
        
        color = [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:alpha];
    }else{
        color = [UIColor redColor];
    }
    
    return color;
}

@end
