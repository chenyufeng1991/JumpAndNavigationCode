
//
//  MainViewController.m
//  SmartHome-MainScreen
//
//  Created by chenyufeng on 15/10/28.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property(strong,nonatomic) UIButton *backButton;

@end

@implementation MainViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    self.backButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, [[UIScreen mainScreen] bounds].size.width, 20)];
    [self.backButton setTitle:@"返回" forState:UIControlStateNormal];
    [self.backButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:self.backButton];

    [self.backButton addTarget:self action:@selector(backButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)backButtonPressed:(id)sender{

    [self dismissViewControllerAnimated:true completion:^{
        //返回后执行的事件；
    }];
}

@end
