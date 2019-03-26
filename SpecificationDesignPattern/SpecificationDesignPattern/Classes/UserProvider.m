//
//  UserProvider.m
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/20.
//  Copyright © 2019 User. All rights reserved.
//

#import "UserProvider.h"
#import "User.h"
#import "IUserSpecification.h"

@interface UserProvider ()

@property (nonatomic, strong) NSArray *userList;

@end

@implementation UserProvider

- (instancetype)initWithUserList:(NSArray *)userList
{
    if (self = [super init]) {
        _userList = [userList copy];
    }
    return self;
}

- (NSArray *)findUserByAgeThan:(NSInteger)age
{
    NSMutableArray *result = [NSMutableArray array];
    for (User *user in _userList) {
        if (user.age > age) {
            [result addObject:user];
        }
    }
    return result.copy;
}

- (NSArray *)findUserByNameEqual:(NSString *)name
{
    NSMutableArray *result = [NSMutableArray array];
    for (User *user in _userList) {
        if ([user.name isEqualToString:name]) {
            [result addObject:user];
        }
    }
    return result.copy;
}

- (NSArray *)findUser:(id<IUserSpecification>)userSpec
{
    NSMutableArray *result = [NSMutableArray array];
    for (User *user in _userList) {
        if ([userSpec isSatisfiedBy:user]) {
            [result addObject:user];
        }
    }
    return result.copy;
}

@end
