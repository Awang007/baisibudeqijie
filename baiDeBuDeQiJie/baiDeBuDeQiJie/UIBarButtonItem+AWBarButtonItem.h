//
//  UIBarButtonItem+AWBarButtonItem.h
//  baiDeBuDeQiJie
//
//  Created by 125154454 on 16/11/11.
//  Copyright © 2016年 aWangLong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (AWBarButtonItem)

+ (UIBarButtonItem *)itemWithImage:(NSString *)imgStr highlightImage:(NSString *)highlightImgStr taget:(id)taget anction:(SEL)act;

@end
