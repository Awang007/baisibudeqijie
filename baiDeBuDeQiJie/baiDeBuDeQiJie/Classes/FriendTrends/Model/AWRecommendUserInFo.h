//
//  AWRecommendUserInFo.h
//  baiDeBuDeQiJie
//
//  Created by 125154454 on 16/11/20.
//  Copyright © 2016年 aWangLong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AWRecommendUserInFo : NSObject

//** 粉丝数量 */
@property (nonatomic,copy) NSString * fans_count;

//** 用户头像 */
@property (nonatomic,copy) NSString * header;

//** 用户id */
@property (nonatomic,copy) NSString * uid;

//** 用户昵称 */
@property (nonatomic,copy) NSString * screen_name;

//** 用户性别 */
@property (nonatomic,copy) NSString * gender;


@end
/*
 
 "fans_count" = 93513;
 gender = 2;
 header = "http://wimg.spriteapp.cn/profile/large/2015/05/25/556330fb83ee9_mini.jpg";
 introduction = "";
 "is_follow" = 0;
 "is_vip" = 0;
 "screen_name" = "fainve\U5355\U5b50";
 "tiezi_count" = 179;
 uid = 9835582;

 
 */
