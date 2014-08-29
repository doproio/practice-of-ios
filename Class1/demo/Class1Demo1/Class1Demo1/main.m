//
//  main.m
//  Class1Demo1
//
//  Created by jeakeyliang on 14-8-29.
//  Copyright (c) 2014年 jeakeyliang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SmartMan.h"
#import "Car.h"
#import "Agent.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        Agent *agent=[[Agent alloc] init];
        SmartMan *herman=[[SmartMan alloc]initWithName:@"herman" withDelegate:agent];
        
        herman.money=10000000;
        
        Car *car=[herman askAgent];
        
        [herman drive:car];
        [herman say:@"大把钱"];
       
    }
    return 0;
}

