//
//  AWNewViewController.m
//  baiDeBuDeQiJie
//
//  Created by 125154454 on 16/11/11.
//  Copyright © 2016年 aWangLong. All rights reserved.
//

#import "AWNewViewController.h"

@interface AWNewViewController ()

@end

@implementation AWNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - response for articleClick method
- (void)articleClick {

    AWLog(@"新帖");
}

#pragma mark - setting User Interface
- (void)setupUI {

    self.view.backgroundColor=[UIColor cz_randomColor];
    //1.设置
    self.navigationItem.titleView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    //2.设置导航右边栏
    UIButton * leftBtn=[[UIButton alloc] init];
    [leftBtn setBackgroundImage:[UIImage imageNamed:@"MainTagSubIcon"] forState:UIControlStateNormal];
    [leftBtn setBackgroundImage:[UIImage imageNamed:@"MainTagSubIconClick"] forState:UIControlStateHighlighted];
    leftBtn.size=leftBtn.currentBackgroundImage.size;
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithCustomView:leftBtn];
    
    [leftBtn addTarget:self action:@selector(articleClick) forControlEvents:UIControlEventTouchUpInside];
    
}


@end
