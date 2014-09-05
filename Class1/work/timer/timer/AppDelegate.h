//
//  AppDelegate.h
//  timer
//
//  Created by jeakeyliang on 14-9-4.
//  Copyright (c) 2014年 jeakeyliang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    UILabel* timeLabel;
    int time;
    NSDate *timestart;
}

@property (strong, nonatomic) UIWindow *window;

-(void)timer;
-(BOOL)setLabel;
-(void)timerFired:(NSTimer *)timer;
@end
