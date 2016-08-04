//
//  ControllerMainDrawerLeft.m
//  BiDongAPP
//
//  Created by zhanghao on 16/7/22.
//  Copyright © 2016年 zhanghao. All rights reserved.
//

#import "ControllerMainDrawerLeft.h"
#import "ControllerDrawer.h"

#import "UINib+Plug.h"
#import "UIColor+Plug.h"
#import "UIStoryboard+Plug.h"

#import "HeaderViewMainLeft.h"

#import "CellMainDrawerLeftMine.h"
#import "CellMainDrawerLeftCommon.h"

#import "ControllerMainDrawerCenter.h"
#import "ControllerShowShowTabbar.h"

#define CellReuseIdentifierMine @"CellMainDrawerLeftMine"
#define CellReuseIdentifierCommon @"CellMainDrawerLeftCommon"
#define HeaderViewReuseIdentifier @"HeaderFooterViewMainLeft"

@interface ControllerMainDrawerLeft ()<UITableViewDelegate, UITableViewDataSource, CellMainDrawerLeftMineDelegate>


@property (weak, nonatomic) IBOutlet UIView *viewSearch;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ControllerMainDrawerLeft

+ (instancetype)shareController{
    ControllerMainDrawerLeft *controller = [UIStoryboard xmControllerWithName:xmStoryboardNameMain indentity:@"ControllerMainDrawerLeft"];
    
    return controller;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerNib:[UINib xmNibFromMainBundleWithName:@"CellMainDrawerLeftMine"] forCellReuseIdentifier:CellReuseIdentifierMine];
    [self.tableView registerNib:[UINib xmNibFromMainBundleWithName:@"CellMainDrawerLeftCommon"] forCellReuseIdentifier:CellReuseIdentifierCommon];
    [self.tableView registerNib:[UINib xmNibFromMainBundleWithName:@"HeaderViewMainLeft"] forHeaderFooterViewReuseIdentifier:HeaderViewReuseIdentifier];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.viewSearch.layer.borderColor = [UIColor xmColorWithHexStrRGB:@"CCCCCC"].CGColor;
    self.viewSearch.layer.borderWidth = 0.5;
    self.viewSearch.layer.cornerRadius = 5;
    self.viewSearch.layer.masksToBounds = YES;
    self.viewSearch.userInteractionEnabled = YES;
    
    UITapGestureRecognizer *tapGestureRecognizerViewSearch = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onClickViewSearch:)];
    [self.viewSearch addGestureRecognizer:tapGestureRecognizerViewSearch];
}

- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 1;
    }else if (section == 1){
        return 1;
    }
    
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        switch (indexPath.row) {
            case 0: return 60;
        }
    }else if (indexPath.section == 1){
        switch (indexPath.row) {
            case 0:return 36;
        }
    }
    
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 1) {
        return 20;
    }
    
    return 0;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            CellMainDrawerLeftMine *cellMine = [tableView dequeueReusableCellWithIdentifier:CellReuseIdentifierMine forIndexPath:indexPath];
            cellMine.delegateCell = self;
            cell = cellMine;
        }
    }else if (indexPath.section == 1){
        if (indexPath.row == 0) {
            CellMainDrawerLeftCommon *cellCommon = [tableView dequeueReusableCellWithIdentifier:CellReuseIdentifierCommon forIndexPath:indexPath];
            [cellCommon setPointColor6cd1c9AndTitle:@"Pretty Beauty"];
            cell = cellCommon;
        }
    }
    
    return cell;
}

- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    HeaderViewMainLeft *headerView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:HeaderViewReuseIdentifier];
    if (section == 1) {
        [headerView setTitle:@"壁咚壁咚"];
    }
    
    
    return headerView;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            [[ControllerDrawer shareController] changeCenterController:[ControllerShowShowTabbar shareController] completion:^(BOOL finish) {
                
            }];
        }
    }
}

- (void)onClickViewSearch:(UITapGestureRecognizer*)sender{
    
}

#pragma mark - CellMine代理回调
- (void)cellMainDrawerLeftMine:(CellMainDrawerLeftMine *)cell onClickBtnProfile:(UIButton *)sender{

}

- (void)cellMainDrawerLeftMine:(CellMainDrawerLeftMine *)cell onClickBtnHomepage:(UIButton *)sender{
    [[ControllerDrawer shareController] changeCenterController:[ControllerMainDrawerCenter shareController] completion:^(BOOL finish) {
        
    }];
}
@end
