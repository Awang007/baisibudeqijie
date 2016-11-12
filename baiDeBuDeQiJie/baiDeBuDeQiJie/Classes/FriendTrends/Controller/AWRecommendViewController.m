//
//  AWRecommendViewController.m
//  baiDeBuDeQiJie
//
//  Created by 125154454 on 16/11/12.
//  Copyright © 2016年 aWangLong. All rights reserved.
//

#import "AWRecommendViewController.h"
#import "AWRecommedCell.h"
#import <AFNetworking.h>
#import <SVProgressHUD.h>

//定义一个可重用cellID
static NSString * categoryCell=@"category";

@interface AWRecommendViewController ()<UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *categoryTableView;


@end

@implementation AWRecommendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor cz_randomColor];
    self.title=@"关注推荐";
    //加载数据
    [self loadData];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
#pragma mark - loadData for recommend
- (void)loadData {

    //1.发送请求
    NSMutableDictionary * parameters=[NSMutableDictionary dictionary];
    parameters[@"a"]=@"category";
    parameters[@"c"]=@"subscribe";
    
    [SVProgressHUD show];
    [[AFHTTPSessionManager manager] GET:@"http://api.budejie.com/api/api_open.php" parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
        AWLog(@"下载进度--%@",downloadProgress);
        [SVProgressHUD dismiss];
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        AWLog(@"成功!");
        [SVProgressHUD dismiss];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        AWLog(@"失败");
        [SVProgressHUD dismiss];
    }];
}

#pragma mark - UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    AWRecommedCell * cell=[tableView dequeueReusableCellWithIdentifier:categoryCell forIndexPath:indexPath];
    cell.textLabel.text=@"列表";
    return cell;
}

#pragma mark - setting Cell interface
- (void)setupUI {

    //1.注册cell
    [self.categoryTableView registerNib:[UINib nibWithNibName:NSStringFromClass([AWRecommedCell class])bundle:nil] forCellReuseIdentifier:categoryCell];
}
@end
