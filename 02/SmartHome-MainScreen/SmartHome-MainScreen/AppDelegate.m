//
//  AppDelegate.m
//  SmartHome-MainScreen
//
//  Created by chenyufeng on 15/10/28.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  //下面这句话不能少，否则所有的导航栏和按钮都会无效；
  [self.window makeKeyAndVisible];
  //初始化第一个NavigationController
  self.viewController = [[ViewController alloc]init];
  self.naviController = [[UINavigationController alloc]initWithRootViewController:self.viewController];
  [self.window addSubview:self.naviController.view];
  
  return YES;
}

@end
