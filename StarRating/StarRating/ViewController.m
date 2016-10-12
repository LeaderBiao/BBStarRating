//
//  ViewController.m
//  StarRating
//
//  Created by BiaoGe on 16/10/10.
//  Copyright © 2016年 BiaoGe. All rights reserved.
//

#import "ViewController.h"
#import "StarView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**
     *       
     1、只需要传入frame（最重要的是宽度）及图片就好
     2、如果是多行，则修改y值
     3、默认是五颗星，宽高相等
     */

    StarView *starView1 = [[StarView alloc]initWithFrame:CGRectMake(100, 100, 200, 50) EmptyImage:@"emptyStar" StarImage:@"Star"];
    StarView *starView2 = [[StarView alloc]initWithFrame:CGRectMake(100, 180, 200, 50) EmptyImage:@"emptyStar" StarImage:@"Star"];
    StarView *starView3 = [[StarView alloc]initWithFrame:CGRectMake(100, 260, 200, 50) EmptyImage:@"emptyStar" StarImage:@"Star"];

    [self.view addSubview:starView1];
    [self.view addSubview:starView2];
    [self.view addSubview:starView3];
}

@end
