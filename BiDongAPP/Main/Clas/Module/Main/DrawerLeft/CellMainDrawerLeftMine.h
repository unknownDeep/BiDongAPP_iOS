//
//  CellMainDrawerLeftMine.h
//  BiDongAPP
//
//  Created by zhanghao on 16/7/26.
//  Copyright © 2016年 zhanghao. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CellMainDrawerLeftMineDelegate;

@interface CellMainDrawerLeftMine : UITableViewCell

@property (nonatomic, weak) id<CellMainDrawerLeftMineDelegate> delegateCell;

@end
@protocol CellMainDrawerLeftMineDelegate <NSObject>
- (void)cellMainDrawerLeftMine:(CellMainDrawerLeftMine*)cell onClickBtnProfile:(UIButton*)sender;

- (void)cellMainDrawerLeftMine:(CellMainDrawerLeftMine*)cell onClickBtnHomepage:(UIButton*)sender;

@end
