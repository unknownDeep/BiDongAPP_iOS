//
//  XMOSS.m
//  BuHuiAi
//
//  Created by zhanghao on 16/7/3.
//  Copyright © 2016年 zhanghao. All rights reserved.
//

#import "XMOSS.h"

@implementation XMOSS

+ (NSString *)urlEmojiMarketBtnWithId:(int)Id{
    return [NSString stringWithFormat:@"http://app-weiyu-protect.oss-cn-shanghai.aliyuncs.com/img/emoji/market/%i/btn.png", Id];
}

@end
