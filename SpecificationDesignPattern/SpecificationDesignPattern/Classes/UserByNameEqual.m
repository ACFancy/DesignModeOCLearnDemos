//
//  UserByNameEqual.m
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#import "UserByNameEqual.h"
#import "User.h"

@interface UserByNameEqual ()

@property (nonatomic, strong) NSString *name;

@end

@implementation UserByNameEqual

- (instancetype)initWithName:(NSString *)name
{
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

- (BOOL)isSatisfiedBy:(User *)user
{
    return [user.name isEqualToString:_name];
}

@end
