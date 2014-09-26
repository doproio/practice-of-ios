//
//  cellButton.h
//  grid
//
//  Created by jeakeyliang on 14-9-22.
//  Copyright (c) 2014年 jeakeyliang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cellButton : UIButton{
    int index;
}
@property int index;
- (id)initWithFrame:(CGRect)frame andIndex:(int)index;

@end
