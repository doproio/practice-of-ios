//
//  smartMan.m
//  Class1Demo1
//
//  Created by jeakeyliang on 14-8-29.
//  Copyright (c) 2014年 jeakeyliang. All rights reserved.
//

#import "smartMan.h"

@implementation SmartMan
@synthesize delegate;
- (id)initWithName:(NSString *)_name withDelegate:(id <Search>)_delegate
{
    self = [super init];
    
    if (self) {
        
        self.name = _name;
        self.delegate = _delegate; // 设置代理
        
    }
    return self;
}
-(void) drive:(Car *)_car{
    NSLog(@"smartMan:%@ driving",self.name);
    
}
-(Car *) askAgent{
    Car* car =nil;
    if ([self.delegate respondsToSelector:@selector(search)]) {
        car = [self.delegate search];
        
    }
    NSLog(@"找到一辆%d元的%@",car.price,car.name);
    return car;
}

@end
