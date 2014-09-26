//
//  ModalViewController.h
//  grid
//
//  Created by jeakeyliang on 14-9-23.
//  Copyright (c) 2014年 jeakeyliang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface ModalViewController :UIViewController<gridDelegate>
- (void)changeLabelText:(NSString *)text;

@end
