//
//  car.m
//  Class1Demo1
//
//  Created by jeakeyliang on 14-8-29.
//  Copyright (c) 2014年 jeakeyliang. All rights reserved.
//

#import "Car.h"

@implementation Car
@synthesize name;
@synthesize price;
-(id) initWithName:(NSString*)_name andPrice:(int)_price{
    if(self=[super init]){
        
        self.name=_name;
        self.price=_price;
    }
    return self;
}

@end
