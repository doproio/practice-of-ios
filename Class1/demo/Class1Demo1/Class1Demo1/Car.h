//
//  car.h
//  Class1Demo1
//
//  Created by jeakeyliang on 14-8-29.
//  Copyright (c) 2014年 jeakeyliang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject{
    int value;
    NSString *name;
    int price;
}
@property (nonatomic) NSString* name;
@property (nonatomic) int price;
- (id) initWithName:(NSString*)_name andPrice:(int)_price;
@end
