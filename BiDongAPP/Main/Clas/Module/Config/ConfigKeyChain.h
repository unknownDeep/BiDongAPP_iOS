//
//  ConfigChainKey.h
//  BiDongAPP
//
//  Created by zhanghao on 16/8/3.
//  Copyright © 2016年 zhanghao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ConfigKeyChain : NSObject

+ (instancetype)shareInstance;

- (void)setSecPipeAES:(NSString*)aesKey;
- (NSString*)secPipeAES;

- (void)clean;

@end
