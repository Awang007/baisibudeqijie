//
//  AWMIineViewController.m
//  baiDeBuDeQiJie
//
//  Created by 125154454 on 16/11/11.
//  Copyright © 2016年 aWangLong. All rights reserved.
//

#import "AWMIineViewController.h"
#import "AWTestViewController.h"
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


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    AWTestViewController * testVC=[[AWTestViewController alloc] init];
    [self.navigationController pushViewController:testVC animated:YES];

}

#pragma mark - setting User Interface
- (void)setupUI {
    self.view.backgroundColor=[UIColor cz_randomColor];

    //1.设置导航栏图标
    self.navigationItem.titleView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    //2.创建导航左边栏的按钮
    UIBarButtonItem * barItemR=[UIBarButtonItem itemWithImage:@"mine-setting-icon" highlightImage:@"mine-setting-icon-click" taget:self anction:@selector(settingClick)];
    UIBarButtonItem * barItemL=[UIBarButtonItem itemWithImage:@"mine-moon-icon" highlightImage:@"mine-moon-icon-click" taget:self anction:@selector(moonClick)];
    //3.添加到导航右边栏
    [self.navigationItem setRightBarButtonItems:@[
                                                 barItemR,
                                              barItemL
                                                 ]];
}



@end
