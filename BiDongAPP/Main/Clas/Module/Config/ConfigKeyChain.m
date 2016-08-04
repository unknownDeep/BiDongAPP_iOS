//
//  ConfigChainKey.m
//  BiDongAPP
//
//  Created by zhanghao on 16/8/3.
//  Copyright © 2016年 zhanghao. All rights reserved.
//

#import "ConfigKeyChain.h"
#import "KeychainItemWrapper.h"

#define APP_KEY_CHAIN_SERVICE @"cc.bidong.ios"

//建立安全管道所需参数
//aes密钥
#define SEC_PIPE_AES @"ConfigKeyChainSecPipe_AES"
//客户端标识符
#define SEC_PIPE_IDENTIFIER @"ConfigKeyChainSecPipe_Identifier"
//安全管道建立时间
#define SEC_PIPE_TIME @"ConfigKeyChainSecPipe_Time"

//登录用户token
#define TOKEN_USER @"ConfigKeyChainTokenUser"

//OSS相关

@interface ConfigKeyChain()

@property (nonatomic, strong) KeychainItemWrapper *keychainItemWrapper;

@end
@implementation ConfigKeyChain

+ (instancetype)shareInstance{
    static ConfigKeyChain *configKeyChain;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        configKeyChain = [[ConfigKeyChain alloc] init];
    });
    return configKeyChain;
}

- (void)setSecPipeAES:(NSString *)aesKey{
    [self setConfigValue:aesKey key:SEC_PIPE_AES];
}
- (NSString *)secPipeAES{
    return [self getConfigValueWithKey:SEC_PIPE_AES];
}

- (void)clean{
    [self.keychainItemWrapper resetKeychainItem];
}

- (void)setConfigValue:(NSString*)value key:(NSString*)key{
    NSDictionary *dic = [self.keychainItemWrapper objectForKey:(id)kSecValueData];
    NSMutableDictionary *dicData;
    if (dic) {
        [self.keychainItemWrapper resetKeychainItem];
        dicData = [NSMutableDictionary dictionaryWithDictionary:dic];
    }else{
        dicData = [NSMutableDictionary dictionary];
    }
    [dicData setObject:value forKey:key];
    
    [self.keychainItemWrapper setObject:dicData forKey:(id)kSecValueData];
}

- (NSString*)getConfigValueWithKey:(NSString*)key{
    NSDictionary *dic = [self.keychainItemWrapper objectForKey:(id)kSecValueData];
    if (dic) {
        return dic[key];
    }
    
    return nil;
}

- (KeychainItemWrapper *)keychainItemWrapper{
    if (!_keychainItemWrapper) {
        _keychainItemWrapper = [[KeychainItemWrapper alloc] initWithIdentifier:APP_KEY_CHAIN_SERVICE accessGroup:nil];
    }
    
    return _keychainItemWrapper;
}

@end
