//
//  User.m
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/20.
//  Copyright © 2019 User. All rights reserved.
//

#import "User.h"

@implementation User

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age
{
    if (self = [super init]) {
        _name = name;
        _age = age;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%p %@ %ld", self, self.name, self.age];
}

@end
