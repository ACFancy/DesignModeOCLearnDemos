//
//  AbsActor.m
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AbsActor.h"

@implementation AbsActor

- (void)act:(id<Role>)role
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)actKongFu:(KungFuRole *)role
{
    NSLog(@"%s", __FUNCTION__);
}

@end
