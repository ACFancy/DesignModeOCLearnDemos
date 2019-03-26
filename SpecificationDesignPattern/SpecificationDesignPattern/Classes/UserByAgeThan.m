//
//  UserByAgeThan.m
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#import "UserByAgeThan.h"
#import "User.h"

@interface UserByAgeThan ()

@property (nonatomic, assign) NSInteger age;

@end

@implementation UserByAgeThan

- (instancetype)initWithAge:(NSInteger)age
{
    if (self = [super init]) {
        _age = age;
    }
    return self;
}

- (BOOL)isSatisfiedBy:(User *)user
{
    return user.age > _age;
}

@end
