//
//  AWRecommendViewController.m
//  baiDeBuDeQiJie
//
//  Created by 125154454 on 16/11/12.
//  Copyright © 2016年 aWangLong. All rights reserved.
//

#import "AWRecommendViewController.h"
#import "AWRecommedCell.h"
#import "AWRecommendCategory.h"
#import "AWRecommendUserInFo.h"
#import <MJExtension.h>

//定义一个可重用cellID
static NSString * categoryCell=@"category";

@interface AWRecommendViewController ()<UITableViewDataSource,UITableViewDelegate>

//** 分类表格 */
@property (weak, nonatomic) IBOutlet UITableView *categoryTableView;

//** 用户表格 */
@property (weak, nonatomic) IBOutlet UITableView *userInFoTableView;

//** 分类模型 */
@property (strong,nonatomic) NSArray * categoryList;

//** 用户模型 */
@property (strong,nonatomic) NSArray * userInFoList;

//** 表格的行数 ( row ) */
@property (assign,nonatomic) NSInteger tableViewRow;

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
    [[AFHTTPSessionManager manager] GET:@"http://api.budejie.com/api/api_open.php" parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@",responseObject);
        //1.转数据
        NSArray * list=responseObject[@"list"];
        self.categoryList=[AWRecommendCategory mj_objectArrayWithKeyValuesArray:list];
        
        NSLog(@"");
        [SVProgressHUD dismiss];
        //刷新数据
        [self.categoryTableView reloadData];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        AWLog(@"失败");
        [SVProgressHUD dismiss];
    }];
}

#pragma mark - UITabBarDelegate 
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    AWLog(@"%zd",indexPath.row);
    AWRecommendCategory * category=_categoryList[indexPath.row];
    
    //1.设置请求参数
    NSMutableDictionary * parameters=[NSMutableDictionary dictionary];
    parameters[@"a"]=@"list";
    parameters[@"c"]=@"subscribe";
    parameters[@"category_id"]=category.id;
   
    //2.发送网络请求http://api.budejie.com/api/api_open.php
    [[AFHTTPSessionManager manager] GET:@"http://api.budejie.com/api/api_open.php" parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        AWLog(@"%@",responseObject);
        self.userInFoList=[AWRecommendUserInFo mj_objectArrayWithKeyValuesArray:responseObject[@"list"]];
        
        //刷新列表
        [self.userInFoTableView reloadData];

    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        AWLog(@"%@",error);
    }];

}

#pragma mark - UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (tableView==_categoryTableView) {
        self.tableViewRow=_categoryList.count;
    }else {
        self.tableViewRow=_userInFoList.count;
    }
    return _tableViewRow;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    AWRecommedCell * cell=[tableView dequeueReusableCellWithIdentifier:categoryCell forIndexPath:indexPath];
    cell.category=self.categoryList[indexPath.row];
    return cell;
}

#pragma mark - setting Cell interface
- (void)setupUI {

    //1.注册cell
    [self.categoryTableView registerNib:[UINib nibWithNibName:NSStringFromClass([AWRecommedCell class])bundle:nil] forCellReuseIdentifier:categoryCell];
}
@end
