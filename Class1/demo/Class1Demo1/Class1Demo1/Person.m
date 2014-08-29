//
//  person.m
//  Class1Demo1
//
//  Created by jeakeyliang on 14-8-29.
//  Copyright (c) 2014年 jeakeyliang. All rights reserved.
//

#import "person.h"

@implementation Person
@synthesize money;
@synthesize name;

- (id) initWithName:(NSString *) _name{
    if(self=[super init]){
        self.name=_name;
        self.money=0;
    }
    
    return self;
}
-(void)drive:(Car *)_car{
    NSLog(@"person driving");
}
-(void)say:(NSString *)_str{
    NSLog(@"%@：%@",name,_str);
}

@end
