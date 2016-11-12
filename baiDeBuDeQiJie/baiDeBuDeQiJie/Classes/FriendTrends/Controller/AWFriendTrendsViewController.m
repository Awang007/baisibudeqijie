//
//  AWFriendTrendsViewController.m
//  baiDeBuDeQiJie
//
//  Created by 125154454 on 16/11/11.
//  Copyright © 2016年 aWangLong. All rights reserved.
//

#import "AWFriendTrendsViewController.h"
#import "AWRecommendViewController.h"

@interface AWFriendTrendsViewController ()

@end

@implementation AWFriendTrendsViewController
//xib中的换行 ( option+enter )
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - response for focusClick method
- (void)focusClick {
    AWLog(@"关注");
    AWRecommendViewController * recommendVC=[[AWRecommendViewController alloc] init];
    
    [self.navigationController pushViewController:recommendVC animated:YES];
}

#pragma mark - setting User Interface
- (void)setupUI {
    self.view.backgroundColor=[UIColor cz_randomColor];
    //1.设置导航栏图标
    self.navigationItem.titleView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    //2.设置导航右边栏
    self.navigationItem.leftBarButtonItem=[UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highlightImage:@"friendsRecommentIconClick" taget:self anction:@selector(focusClick)];
}
@end
