//
//  ViewController.h
//  grid
//
//  Created by jeakeyliang on 14-9-22.
//  Copyright (c) 2014年 jeakeyliang. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol gridDelegate<NSObject>
- (void)changeLabelText:(NSString *)text;
@end

@interface ViewController : UIViewController
@property (nonatomic,assign) id <gridDelegate> delete;
@end
