//
//  XXCustomButton.m
//  XXCustomButton
//
//  Created by LittleKin on 16/2/4.
//  Copyright © 2016年 LittleKin. All rights reserved.
//

#import "XXCustomButton.h"

@implementation XXCustomButton


+ (instancetype)button
{
    return [[self alloc] init];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 按钮背景设置默认是白色
        self.backgroundColor = [UIColor whiteColor];
        // 图片居中显示
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
        // 设置按钮属性
        [self setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
        self.titleLabel.font = [UIFont systemFontOfSize:12.0f];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat buttonW = self.frame.size.width;
    CGFloat buttonH = self.frame.size.height;
    
    CGFloat imageW = self.frame.size.width/2;
    CGFloat imageH = imageW;
    
    CGFloat titleW = self.frame.size.width;
    CGFloat titleH = 24;
    
    // 图标
    CGFloat imageX = (buttonW - imageW) / 2;
    CGFloat imageY = (buttonH - imageH - titleH)/2;
    // 改变图标的位置在此修改
    self.imageView.frame = CGRectMake(imageX, imageY, imageW, imageH);
    
    // 标题
    CGFloat titleX = 0;
    CGFloat titleY = CGRectGetMaxY(self.imageView.frame) + 5;
    // 改变标题的位置在此修改
    self.titleLabel.frame = CGRectMake(titleX, titleY, titleW, titleH);
    
}

/**
 *  取消高亮
 */
- (void)setHighlighted:(BOOL)highlighted
{
    
}


@end
