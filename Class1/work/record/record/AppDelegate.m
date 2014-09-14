//
//  AppDelegate.m
//  record
//
//  Created by hahnzhu on 14/9/12.
//  Copyright (c) 2014年 hahnzhu. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end


NSDateFormatter * format;

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame: [[UIScreen mainScreen] bounds]];
    
//    self.window.windowLevel = UIWindowLevelStatusBar;
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    self.window.rootViewController = [storyBoard instantiateInitialViewController];
    
    tv = (UITextView *)[self.window.rootViewController.view viewWithTag:2];
    
    date = [NSDate date];
    format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    return YES;
}


- (void)setText:(NSString *) string {
    temp = tv.text;
    
    date = [NSDate date];
    time = [format stringFromDate:date];
    
//        tv.text = [temp stringByAppendingString: time];
    tv.text = [temp stringByAppendingFormat:@"%@\n%@",time, string];
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    [self setText:@"applicationWillResignActive \n\n"];
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    [self setText:@"applicationDidEnterBackground \n\n"];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    
    [self setText:@"applicationWillEnterForeground \n\n"];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    [self setText:@"applicationDidBecomeActive \n\n"];
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    [self setText:@"applicationWillTerminate \n\n"];
}

@end
