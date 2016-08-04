//
//  HeaderFooterViewMainLeft.m
//  BuHuiAi
//
//  Created by zhanghao on 16/7/25.
//  Copyright © 2016年 zhanghao. All rights reserved.
//

#import "HeaderViewMainLeft.h"

@interface HeaderViewMainLeft()

@property (weak, nonatomic) IBOutlet UILabel *labelTitle;

@end
@implementation HeaderViewMainLeft

- (void)setTitle:(NSString *)title{
    [self.labelTitle setText:title];
}

@end
