//
//  AWRecommedCell.m
//  baiDeBuDeQiJie
//
//  Created by 125154454 on 16/11/12.
//  Copyright © 2016年 aWangLong. All rights reserved.
//

#import "AWRecommedCell.h"
#import "AWRecommendCategory.h"

@interface AWRecommedCell ()

//选中提示栏
@property (weak, nonatomic) IBOutlet UIView *selectedIndicate;



@end

@implementation AWRecommedCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    //默认
    
}

-(void)setCategory:(AWRecommendCategory *)category{

    _category=category;
    self.textLabel.text=_category.name;

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    //设置字体选中状态颜色 ( highlight没用了 )
    self.textLabel.textColor=selected ? [UIColor orangeColor] : [UIColor blackColor] ;
    self.selectedIndicate.hidden=!selected;
    
}

- (void)layoutSubviews{
    [super layoutSubviews];
    //重新调整内部布局
    self.textLabel.height=self.contentView.height-2;
    
}

@end
