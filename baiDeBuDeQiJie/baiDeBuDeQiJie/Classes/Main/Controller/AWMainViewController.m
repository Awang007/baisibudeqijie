//
//  AWMainViewController.m
//  baiDeBuDeQiJie
//
//  Created by 125154454 on 16/11/11.
//  Copyright © 2016年 aWangLong. All rights reserved.
//

#import "AWMainViewController.h"
#import "AWNewViewController.h"
#import "AWMIineViewController.h"
#import "AWEssenceViewController.h"
#import "AWFriendTrendsViewController.h"
#import "AWCustomTabBar.h"

@interface AWMainViewController ()

@end

@implementation AWMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) setupUI {

    //1.设置tabBar属性属性
    NSMutableDictionary * attribute=[NSMutableDictionary dictionary];
    attribute[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    attribute[NSForegroundColorAttributeName]=[UIColor grayColor];
    
    NSMutableDictionary * selectedAttribute=[NSMutableDictionary dictionary];
    selectedAttribute[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    selectedAttribute[NSForegroundColorAttributeName]=[UIColor darkGrayColor];
    
    UITabBarItem * item=[UITabBarItem appearance];//注意点
    [item setTitleTextAttributes:attribute forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttribute forState:UIControlStateSelected];

    
    //2.添加自控制器
    [self setupChildController:[[AWEssenceViewController alloc] init] title:@"精华" image:[UIImage imageNamed:@"tabBar_essence_icon"] selectedImage:[UIImage imageNamed:@"tabBar_essence_click_icon"]];
    [self setupChildController:[[AWNewViewController alloc] init] title:@"新帖" image:[UIImage imageNamed:@"tabBar_new_icon"] selectedImage:[UIImage imageNamed:@"tabBar_new_click_icon"]];
    [self setupChildController:[[AWFriendTrendsViewController alloc] init] title:@"关注" image:[UIImage imageNamed:@"tabBar_friendTrends_icon"] selectedImage:[UIImage imageNamed:@"tabBar_friendTrends_click_icon"]];
    [self setupChildController:[[AWMIineViewController alloc] init] title:@"我" image:[UIImage imageNamed:@"tabBar_me_icon"] selectedImage:[UIImage imageNamed:@"tabBar_me_click_icon"]];
    
    //3.把系统tabBar替换成自定义tabBar
    [self setValue:[[AWCustomTabBar alloc] init] forKey:@"tabBar"];
}

#pragma mark - 添加自控制器
- (void) setupChildController: (UIViewController *)vc title:(NSString *) title image:(UIImage *)img selectedImage:(UIImage *) selectedImg{

    vc.navigationItem.title=title;
    vc.tabBarItem.title=title;
    vc.tabBarItem.image=img;
    vc.tabBarItem.selectedImage=selectedImg;
    
    UINavigationController * nvg=[[UINavigationController alloc] initWithRootViewController:vc];
    
    [self addChildViewController:nvg];
}

@end
