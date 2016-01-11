//
//  AppDelegate.m
//  Test
//
//  Created by chenyufeng on 15/10/29.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "SecondViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  //这里加载第一个页面；
  UINavigationController *navC = [[UINavigationController alloc]initWithRootViewController:[[ViewController alloc]init]];
  self.window.backgroundColor = [UIColor whiteColor];
  self.window.rootViewController = navC;
  [self.window makeKeyAndVisible];
  return YES;
}

@end
