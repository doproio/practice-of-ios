//
//  person.h
//  Class1Demo1
//
//  Created by jeakeyliang on 14-8-29.
//  Copyright (c) 2014年 jeakeyliang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
@interface Person : NSObject{
    int money;
    NSString *name;
}
@property (nonatomic) int money;
@property (nonatomic) NSString *name;

- (id) initWithName:(NSString *) _name;
- (void) drive:(Car*) _car ;
- (void) say:(NSString *) _str;

@end
