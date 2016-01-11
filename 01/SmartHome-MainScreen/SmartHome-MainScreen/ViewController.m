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
}

-(void)clickMe:(id)sender{

  [self presentViewController:[[MainViewController alloc] init] animated:true completion:^{
    //跳转完成后需要执行的事件；
  }];
}

@end
