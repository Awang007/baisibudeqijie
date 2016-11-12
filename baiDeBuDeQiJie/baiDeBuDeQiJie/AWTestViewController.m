//
//  AWTestViewController.m
//  baiDeBuDeQiJie
//
//  Created by 125154454 on 16/11/12.
//  Copyright © 2016年 aWangLong. All rights reserved.
//

#import "AWTestViewController.h"

@interface AWTestViewController ()

@end

@implementation AWTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor cz_randomColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor cz_randomColor];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
