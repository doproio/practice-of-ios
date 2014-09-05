//
//  AppDelegate.m
//  timer
//
//  Created by jeakeyliang on 14-9-4.
//  Copyright (c) 2014年 jeakeyliang. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    BOOL isStoryboord=false;
    
    if(isStoryboord){
        // storyBoard的方式
        UIStoryboard *storyBoard=[UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
        self.window.rootViewController=[storyBoard instantiateInitialViewController];
        timeLabel=(UILabel *)[self.window.rootViewController.view viewWithTag:1];
        timeLabel.text=@"开始计时";
    }else{
        // 使用代码的方式
        UIViewController *vc=[[UIViewController alloc] init];
        self.window.rootViewController=vc;
        [vc.view setBackgroundColor:[UIColor whiteColor]];
        timeLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 200, 320, 50)];
        timeLabel.font=[UIFont systemFontOfSize:30];
        timeLabel.textAlignment=NSTextAlignmentCenter;
        timeLabel.text=@"开始计时";
        
        [vc.view addSubview:timeLabel];
        
    }
    
    // 调用定时器方法
    [self timer];
    
    [self.window makeKeyAndVisible];
    return YES;
}
-(void) timer{
    time=50;
   [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerFired:) userInfo:nil repeats:YES];
}
-(void) timerFired:(NSTimer *)timer{
    BOOL status=[self setLabel];
    if(status<=0){
        [timer invalidate];
        timer=nil;
    }
}
-(BOOL) setLabel{
    NSLog(@"%d",time);
    if(time>0){
        timeLabel.text=[NSString stringWithFormat:@"还剩  %d",time--];
        return true;
    }else{
        timeLabel.text=[NSString stringWithFormat:@"计时结束"];
        return false;
    }
    
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    NSLog(@"status:————applicationWillResignActive");
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    

    timestart = [NSDate date];
    
    NSLog(@"status:————applicationDidEnterBackground");
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    
    NSTimeInterval dur = [timestart timeIntervalSinceNow];
    float fdis = dur;
    time -= - round(fdis);
    
    [self setLabel];
    NSLog(@"status:————applicationWillEnterForeground");
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    NSLog(@"status:————applicationDidBecomeActive");
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    NSLog(@"status:————applicationWillTerminate");
}

@end
