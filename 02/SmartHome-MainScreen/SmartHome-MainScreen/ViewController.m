//
//  ViewController.m
//  SmartHome-MainScreen
//
//  Created by chenyufeng on 15/10/28.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "ViewController.h"
#import "MainViewController.h"

@interface ViewController ()

@property(strong,nonatomic) UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {

  [super viewDidLoad];
  self.button = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, [[UIScreen mainScreen] bounds].size.width, 20)];
  [self.button setTitle:@"跳转" forState:UIControlStateNormal];
  [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
  [self.view addSubview:self.button];
  
  [self.button addTarget:self action:@selector(clickMe:) forControlEvents:UIControlEventTouchUpInside];
  //为导航栏增加标题；
  self.title = @"首页";
}

//现在我要做的是为页面增加NavagationBar,是通过代码添加的，使之在页面跳转的时候起作用；
-(void)clickMe:(id)sender{
  //要跳转到第二个界面；
  MainViewController *mainController = [[MainViewController alloc] init];
  //如果包含导航栏的话，需要使用如下方式进行界面跳转；不能使用presentViewController进行跳转;
  [self.navigationController pushViewController:mainController animated:true];
}

@end
