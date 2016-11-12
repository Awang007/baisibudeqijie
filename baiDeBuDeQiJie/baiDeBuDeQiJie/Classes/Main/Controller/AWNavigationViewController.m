//
//  AWNavigationViewController.m
//  baiDeBuDeQiJie
//
//  Created by 125154454 on 16/11/12.
//  Copyright © 2016年 aWangLong. All rights reserved.
//

#import "AWNavigationViewController.h"

@interface AWNavigationViewController ()

@end

@implementation AWNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{

    if (self.childViewControllers.count>0){//如果push进来的不是第一控制器
        UIButton * btn=[UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:@"返回" forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        
        [btn setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        
        btn.size = CGSizeMake(70, 30);
        btn.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
        btn.contentEdgeInsets=UIEdgeInsetsMake(0, -10,0, 0);
        
        [btn addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
        viewController.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithCustomView:btn];//这里必须设置目标控制器的navigationItem.( 另外,返回键backBarButtonItem 不能够自定义的 )
    }
    [super pushViewController:viewController animated:animated];
    
}

#pragma response For backClick Method
- (void)backClick {

    AWLog(@"返回");
    [self popViewControllerAnimated:YES];
}


@end
