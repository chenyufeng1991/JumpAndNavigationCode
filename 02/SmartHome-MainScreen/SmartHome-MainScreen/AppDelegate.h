//
//  AppDelegate.h
//  SmartHome-MainScreen
//
//  Created by chenyufeng on 15/10/28.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

//添加导航控制器
@property (strong,nonatomic) UINavigationController *naviController;

//要把该界面作为第一个有导航栏的ViewController；
@property (strong,nonatomic) ViewController *viewController;

@end

