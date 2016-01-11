//
//  ViewController.m
//  Test
//
//  Created by chenyufeng on 15/10/29.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

//@property(strong,nonatomic) UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {

  [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated{

  [super viewDidAppear:animated];
  UIButton *button = [[UIButton alloc] init];
  button = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, 50, 20)];
  [button setTitle:@"跳转" forState:UIControlStateNormal];
  [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
  
  [self.view addSubview:button];
  [button addTarget:self action:@selector(jump:) forControlEvents:UIControlEventTouchUpInside];
  [self.navigationItem setTitle:@"首页"];
}

- (void)jump:(id)sender{
  //如果没有导航栏，就进行这种跳转；
//  [self presentViewController:[[SecondViewController alloc] init] animated:true completion:^{
//    
//  }];
  [self.navigationController pushViewController:[[SecondViewController alloc] init] animated:true];
}

@end
