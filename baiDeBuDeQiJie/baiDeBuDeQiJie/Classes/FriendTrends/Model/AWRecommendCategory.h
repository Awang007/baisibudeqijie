//
//  AWRecommendModel.h
//  baiDeBuDeQiJie
//
//  Created by 125154454 on 16/11/20.
//  Copyright © 2016年 aWangLong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AWRecommendCategory : NSObject

//** 标签id */
@property (nonatomic,copy) NSString * id;

//** 标签名称 */
@property (nonatomic,copy) NSString * name;

//** 此标签下的用户 */
@property (nonatomic,copy) NSString * count;

//** 左标签下的用户 */
@property (nonatomic,copy) NSString * total;

//** 标签数组 */
@property (nonatomic,copy) NSString * list;



@end
