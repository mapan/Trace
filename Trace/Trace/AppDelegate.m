//
//  AppDelegate.m
//  Trace
//
//  Created by Kabir Gupta on 10/25/14.
//  Copyright (c) 2014 Trace-App. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "HomeViewController.h"
#import "Trace-Swift.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    HomeViewController *hvc = [[HomeViewController alloc] init];
    hvc.tabBarItem.image = [UIImage imageNamed:@"home.png"];
    hvc.tabBarItem.title = @"Home";
    
    TravelsViewController *tvc = [[TravelsViewController alloc] init];
    tvc.tabBarItem.title = @"Travels";
    
    UITabBarController *tbc = [[UITabBarController alloc] init];
    tbc.viewControllers = @[hvc, tvc];
    
    self.window.rootViewController = tbc;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end