//
//  AppDelegate.m
//  imageview
//
//  Created by hahnzhu on 14/9/19.
//  Copyright (c) 2014年 hahnzhu. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end


int count;
static int i = 0;

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.window.rootViewController = [storyBoard instantiateInitialViewController];
    
    label = (UILabel *)[self.window.rootViewController.view viewWithTag:1];
    
    imageview = (UIImageView *)[self.window.rootViewController.view viewWithTag:2];
    
    btn = (UIButton *)[self.window.rootViewController.view viewWithTag:3];
    

//    imageview.image = [UIImage imageNamed:@"1.jpg"];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"];
    
    NSData *data = [NSData dataWithContentsOfFile:path];
    [imageview setImage:[UIImage imageWithData:data]];
    
    imageview.contentMode = UIViewContentModeScaleAspectFill;
//    imageview.clipsToBounds = YES;
    
//    imageview.alpha = 0.5;
//    imageview.backgroundColor = [UIColor blackColor];
    
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    
    id cm1 = [ NSNumber numberWithInt:UIViewContentModeScaleToFill ];
    id cm2 = [ NSNumber numberWithInt:UIViewContentModeScaleAspectFit ];
    id cm3 = [ NSNumber numberWithInt:UIViewContentModeScaleAspectFill ];
    id cm4 = [ NSNumber numberWithInt:UIViewContentModeCenter ];
    
    arr = [NSArray arrayWithObjects: cm1, cm2, cm3, cm4, nil];
    
    arr2 = [NSArray arrayWithObjects: @"UIViewContentModeScaleToFill", @"UIViewContentModeScaleAspectFit", @"UIViewContentModeScaleAspectFill", @"UIViewContentModeCenter", nil];

    //把图片添加到动态数组
        NSMutableArray * animateArray = [[NSMutableArray alloc]initWithCapacity:5];
    
        [animateArray addObject:[UIImage imageNamed:@"1.jpg"]];
        [animateArray addObject:[UIImage imageNamed:@"2.jpg"]];
        [animateArray addObject:[UIImage imageNamed:@"3.jpg"]];
        [animateArray addObject:[UIImage imageNamed:@"4.jpg"]];
        [animateArray addObject:[UIImage imageNamed:@"5.jpg"]];
    
        //为图片设置动态
        imageview.animationImages = animateArray;
        //为动画设置持续时间
        imageview.animationDuration = 1;
        //为默认的无限循环
        imageview.animationRepeatCount = 0;
    
        //开始播放动画
        [imageview startAnimating];

    
//    count = (long int)arr.count;
    
    
    return YES;
}


- (void) click{

    if (i >= count) {
        i=0;
    }
    
    imageview.contentMode = [[arr objectAtIndex:i] intValue];
    label.text = [arr2 objectAtIndex:i];
    i++;
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
