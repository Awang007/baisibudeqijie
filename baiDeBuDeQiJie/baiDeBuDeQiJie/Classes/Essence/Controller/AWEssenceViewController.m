//
//  AWEssenceViewController.m
//  baiDeBuDeQiJie
//
//  Created by 125154454 on 16/11/11.
//  Copyright © 2016年 aWangLong. All rights reserved.
//

#import "AWEssenceViewController.h"
#import "AWTestViewController.h"
@interface AWEssenceViewController ()

@end

@implementation AWEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    AWTestViewController * testVC=[[AWTestViewController alloc] init];
    [self.navigationController pushViewController:testVC animated:YES];

}


#pragma mark - response for classicsClick
- (void)classicsClick {

    AWLog(@"经典");
}

#pragma mark - setting User Interface
- (void)setupUI {

    self.view.backgroundColor=[UIColor cz_randomColor];
    
    //1.设置导航栏图标
    self.navigationItem.titleView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    //2.设置导航右边栏
    self.navigationItem.leftBarButtonItem=[UIBarButtonItem itemWithImage:@"MainTagSubIcon" highlightImage:@"MainTagSubIconClick" taget:self anction:@selector(classicsClick)];
}

@end
