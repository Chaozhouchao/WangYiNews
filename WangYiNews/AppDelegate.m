//
//  AppDelegate.m
//  WangYiNews
//
//  Created by qianfeng on 15/3/29.
//  Copyright (c) 2015年 zhouchao. All rights reserved.
//

#import "AppDelegate.h"
#import "MyTabBarController.h"
//#import "FirstViewController.h"
//#import "SecondViewController.h"
//#import "ThirdViewController.h"
//#import "ForthViewController.h"

@implementation AppDelegate

- (void)dealloc {
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    MyTabBarController *tabBarController = [MyTabBarController creatMyTabBarController];
    
    
    
    
//    FirstViewController *fir = [[FirstViewController alloc] init];
//    UINavigationController *nav1 = [[[UINavigationController alloc] initWithRootViewController:fir] autorelease];
//    [fir release];
//    
//    SecondViewController *sec = [[SecondViewController alloc] init];
//    UINavigationController *nav2 = [[[UINavigationController alloc] initWithRootViewController:sec] autorelease];
//    [sec release];
//    
//    ThirdViewController *thir = [[ThirdViewController alloc] init];
//    UINavigationController *nav3 = [[[UINavigationController alloc] initWithRootViewController:thir] autorelease];
//    [thir release];
//    
//    ForthViewController *forth = [[ForthViewController alloc] init];
//    UINavigationController *nav4 = [[[UINavigationController alloc] initWithRootViewController:forth] autorelease];
//    [forth release];
//
//    
//    UITabBarController *tabBarController = [[[UITabBarController alloc] init] autorelease];
    
//    tabBarController.viewControllers = @[nav1, nav2, nav3, nav4];
    
    self.window.rootViewController = tabBarController;
    
    [self.window makeKeyAndVisible];
    
    
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
