//
//  Group.m
//  CommandDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Group.h"

@implementation Group

- (void)find
{
    @throw [NSException exceptionWithName:@"GroupCallErrorDomain" reason:@"Must override in subClass" userInfo:nil];
}

- (void)add
{
    @throw [NSException exceptionWithName:@"GroupCallErrorDomain" reason:@"Must override in subClass" userInfo:nil];
}

- (void)deleteSome
{
    @throw [NSException exceptionWithName:@"GroupCallErrorDomain" reason:@"Must override in subClass" userInfo:nil];
}

- (void)change
{
    @throw [NSException exceptionWithName:@"GroupCallErrorDomain" reason:@"Must override in subClass" userInfo:nil];
}

- (void)plan
{
    @throw [NSException exceptionWithName:@"GroupCallErrorDomain" reason:@"Must override in subClass" userInfo:nil];
}

- (void)rollBack
{
    @throw [NSException exceptionWithName:@"GroupCallErrorDomain" reason:@"Must override in subClass" userInfo:nil];
}

@end
