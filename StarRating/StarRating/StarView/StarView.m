//
//  StarView.m
//  StarRating
//
//  Created by BiaoGe on 16/10/10.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "StarView.h"

#define imageW self.bounds.size.width / 10


@interface StarView ()

@property (nonatomic,strong)UIView *starBackgroundView;
@property (nonatomic,strong)UIView *starForegroundView;

@end

@implementation StarView

- (id)initWithFrame:(CGRect)frame EmptyImage:(NSString *)Empty StarImage:(NSString *)Star
{
    self = [super initWithFrame:frame];
    if(self)
    {
        self.starBackgroundView = [self buidlStarViewWithImageName:Empty];
        self.starForegroundView = [self buidlStarViewWithImageName:Star];
        
        [self addSubview:self.starBackgroundView];
        
        self.userInteractionEnabled = YES;
        
        /**
         *  点击手势
         */
        UITapGestureRecognizer *tapGR=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGR:)];
        [self addGestureRecognizer:tapGR];
        
        /**滑动手势*/
        
        UIPanGestureRecognizer *panGR = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(tapGR:)];
        [self addGestureRecognizer:panGR];
        
    }
    return self;
}

- (UIView *)buidlStarViewWithImageName:(NSString *)imageName
{
    CGRect frame = self.bounds;
    
    UIView *view = [[UIView alloc]initWithFrame:frame];
    view.clipsToBounds = YES;
    
    for(int i = 0;i < 5;i++)
    {
        UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:imageName]];
        imageView.frame = CGRectMake(2 * i * imageW, 0, imageW, imageW);
        [view addSubview:imageView];
    }
    return view;
    
}

- (void)tapGR:(UITapGestureRecognizer *)tanGR
{
    CGPoint point = [tanGR locationInView:self];
    
    if(point.x < 0)
    {
        point.x = 0;
    }
    int xX = (int)point.x / (2 * imageW);
    self.starForegroundView.frame = CGRectMake(0, 0, (xX + 1) * 2 * imageW, imageW);
    [self addSubview:self.starForegroundView];
}

@end
