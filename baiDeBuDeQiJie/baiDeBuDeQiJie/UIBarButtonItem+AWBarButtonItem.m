//
//  UIBarButtonItem+AWBarButtonItem.m
//  baiDeBuDeQiJie
//
//  Created by 125154454 on 16/11/11.
//  Copyright © 2016年 aWangLong. All rights reserved.
//

#import "UIBarButtonItem+AWBarButtonItem.h"

@implementation UIBarButtonItem (AWBarButtonItem)

+ (UIBarButtonItem *)itemWithImage:(NSString *)imgStr highlightImage:(NSString *)highlightImgStr taget:(id)taget anction:(SEL)act {

    UIButton * btn=[[UIButton alloc] init];
    [btn setBackgroundImage:[UIImage imageNamed:imgStr] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:highlightImgStr] forState:UIControlStateHighlighted];
    btn.size=btn.currentBackgroundImage.size;
    [btn addTarget:taget action:act forControlEvents:UIControlEventTouchUpInside];
    
    return [[self alloc] initWithCustomView:btn];
}

@end
