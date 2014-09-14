//
//  AppDelegate.h
//  record
//
//  Created by hahnzhu on 14/9/12.
//  Copyright (c) 2014年 hahnzhu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate> {

    UITextView * tv;
    NSDate * date;
    NSString * temp, * time;
    
}

@property (strong, nonatomic) UIWindow *window;


@end



@interface Car : NSObject {

    int x;

}
@end
