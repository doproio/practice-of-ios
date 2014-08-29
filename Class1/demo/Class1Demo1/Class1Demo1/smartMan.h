//
//  smartMan.h
//  Class1Demo1
//
//  Created by jeakeyliang on 14-8-29.
//  Copyright (c) 2014年 jeakeyliang. All rights reserved.
//

#import "person.h"
#import "Car.h"
#import "Search.h"

@interface SmartMan : Person{
    id <Search> delegate; // 委托
}
@property id<Search> delegate;

- (id)initWithName:(NSString *)_name withDelegate:(id <Search>)_delegate;
- (void) drive:(Car *) _car;
- (Car *) askAgent;

@end
