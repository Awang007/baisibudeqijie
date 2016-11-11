//
//  AWMIineViewController.m
//  baiDeBuDeQiJie
//
//  Created by 125154454 on 16/11/11.
//  Copyright © 2016年 aWangLong. All rights reserved.
//

#import "AWMIineViewController.h"

@interface AWMIineViewController ()

@end

@implementation AWMIineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma - mark - response for button
- (void)settingClick {
    AWLog(@"设置");
}

- (void)moonClick {
    AWLog(@"夜间模式");
}

#pragma mark - setting User Interface
- (void)setupUI {
    self.view.backgroundColor=[UIColor cz_randomColor];

    //1.设置导航栏图标
    self.navigationItem.titleView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    //2.创建导航左边栏的按钮
    UIButton * settingBtn=[[UIButton alloc] init];
    [settingBtn setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon"] forState:UIControlStateNormal];
    [settingBtn setBackgroundImage:[UIImage imageNamed:@"mine-setting-icon-click"] forState:UIControlStateHighlighted];
    settingBtn.size=settingBtn.currentBackgroundImage.size;
    [settingBtn addTarget:self action:@selector(settingClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton * moonBtn=[[UIButton alloc] init];
    [moonBtn setBackgroundImage:[UIImage imageNamed:@"mine-moon-icon"] forState:UIControlStateNormal];
    [moonBtn setBackgroundImage:[UIImage imageNamed:@"mine-moon-icon-click"] forState:UIControlStateHighlighted];
    moonBtn.size=moonBtn.currentBackgroundImage.size;
    [settingBtn addTarget:self action:@selector(moonClick) forControlEvents:UIControlEventTouchUpInside];
    
    //3.添加到导航右边栏
    [self.navigationItem setRightBarButtonItems:@[
                                                 [[UIBarButtonItem alloc] initWithCustomView:settingBtn],
                                              [[UIBarButtonItem alloc] initWithCustomView:moonBtn]
                                                 ]];
}



@end
