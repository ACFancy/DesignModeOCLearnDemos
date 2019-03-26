//
//  UserByNameLike.m
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#import "UserByNameLike.h"
#import "User.h"

@interface UserByNameLike ()

@property (nonatomic, strong) NSPredicate *predicate;

@end

@implementation UserByNameLike

- (instancetype)initWithNameLike:(NSString *)nameLike
{
    if (self = [super init]) {
        NSString *format = [NSString stringWithFormat:@"self like '*%@*'", nameLike];
        _predicate = [NSPredicate predicateWithFormat:format];
    }
    return self;
}

- (BOOL)isSatisfiedBy:(User *)user
{
    return [_predicate evaluateWithObject:user.name];
}

@end
