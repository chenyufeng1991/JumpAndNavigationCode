//
//  SecondViewController.m
//  Test
//
//  Created by chenyufeng on 15/10/29.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {

    [super viewDidLoad];
  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  UINavigationController *navi = [[UINavigationController alloc] init];
  [navi addChildViewController:self];
  [self.window makeKeyAndVisible];
  //设置导航标题，这个时候的返回按钮的title就是上一级的navigationItem的title文字
  [self.navigationItem setTitle:@"子页"];
}

@end
