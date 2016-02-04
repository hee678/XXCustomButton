//
//  ViewController.m
//  XXCustomButton
//
//  Created by LittleKin on 16/2/4.
//  Copyright © 2016年 LittleKin. All rights reserved.
//

#import "ViewController.h"
#import "XXCustomButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createButton];
}

- (void)createButton
{
    XXCustomButton *button = [[XXCustomButton alloc] init];
    button.frame = CGRectMake(100, 300, 100, 100);
    [button setTitle:@"确定" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"collect"] forState:UIControlStateNormal];
    [self.view addSubview:button];
    button.layer.borderWidth = 0.5;
    [button addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
}

- (void)clickButton
{
    NSLog(@"点击了按钮");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
