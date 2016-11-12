//
//  AWCustemTabBar.m
//  baiDeBuDeQiJie
//
//  Created by 125154454 on 16/11/11.
//  Copyright © 2016年 aWangLong. All rights reserved.
//

#import "AWCustomTabBar.h"

//CustemTabBar的宽度和高度
#define BABW self.bounds.size.width
#define BABH self.bounds.size.height
@interface AWCustomTabBar ()
//** 发布按钮 */
@property (nonatomic,weak) UIButton * publishButton;

@end

@implementation AWCustomTabBar

- (instancetype)initWithFrame:(CGRect)frame {

    if (self=[super initWithFrame:frame]){
    
        //添加发布按钮
        UIButton * pulishBtn=[UIButton buttonWithType:UIButtonTypeCustom];
        [pulishBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [pulishBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateSelected];
        [self addSubview:pulishBtn];
        _publishButton=pulishBtn;
    
    }
    return self;
}

#pragma mark - 按钮布局
- (void)layoutSubviews{
    [super layoutSubviews];
    
    //设置公布按钮的frame ( 根据图片大小设置宽高 )
    self.publishButton.bounds = CGRectMake(0, 0, _publishButton.currentBackgroundImage.size.width, _publishButton.currentBackgroundImage.size.height);
    self.publishButton.center =CGPointMake(self.with/2, self.height/2);
    
    //其他UITabBarButton的Frame
    CGFloat buttonY=0;
    CGFloat buttonW=BABW/5;
    CGFloat buttonH=BABH;
    NSInteger index=0;
    //按钮重新布局
    for (UIView * btn in self.subviews) {
        
        if (![btn isKindOfClass:[UIControl class]] || btn==_publishButton ) continue;
        CGFloat buttonX=buttonW*((index>1)?(index+1):index);
        btn.frame=CGRectMake(buttonX, buttonY, buttonW, buttonH);
        index++;
    }
    

}

@end
