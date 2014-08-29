//
//  Agent.h
//  Class1Demo1
//
//  Created by jeakeyliang on 14-8-29.
//  Copyright (c) 2014年 jeakeyliang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Search.h"

@interface Agent : NSObject <Search>
-(id)search;
@end
