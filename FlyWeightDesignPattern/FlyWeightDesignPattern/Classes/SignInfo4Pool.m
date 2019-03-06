//
//  SignInfo4Pool.m
//  FlyWeightDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import "SignInfo4Pool.h"

@implementation SignInfo4Pool

- (instancetype)initWithKey:(NSString *)key
{
    if (self = [super init]) {
        _key = key;
    }
    return self;
}

@end
