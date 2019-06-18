//
//  JWAppDelegate.m
//  SmarterStreaming
//
//  Created by Jasio Wu on 06/18/2019.
//  Copyright (c) 2019 Jasio Wu. All rights reserved.
//

#import "JWAppDelegate.h"
#import "JWViewController.h"

@implementation JWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    JWViewController *homeVC = [[JWViewController alloc] init];
    UINavigationController *navCtl = [[UINavigationController alloc] initWithRootViewController:homeVC];
    self.window.rootViewController = navCtl;
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
}
- (void)applicationDidEnterBackground:(UIApplication *)application {
}
- (void)applicationWillEnterForeground:(UIApplication *)application {
}
- (void)applicationDidBecomeActive:(UIApplication *)application {
}
- (void)applicationWillTerminate:(UIApplication *)application {
}
@end
