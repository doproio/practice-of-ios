//
//  cellButton.m
//  grid
//
//  Created by jeakeyliang on 14-9-22.
//  Copyright (c) 2014年 jeakeyliang. All rights reserved.
//

#import "cellButton.h"

@implementation cellButton
@synthesize index;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
- (id)initWithFrame:(CGRect)frame andIndex:(int)cellIndex
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.index=cellIndex;
        if(self.index%2){
            self.backgroundColor=[UIColor whiteColor];
        }else{
            self.backgroundColor=[UIColor blackColor];
        }
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}


@end
