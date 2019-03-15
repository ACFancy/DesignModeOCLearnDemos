//
//  Position.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Position.h"
#import "AbsMediator.h"

@implementation Position

- (void)promote
{
    [self.mediator upWithPosition:self];
}

- (void)demote
{
    [self.mediator downWithPosition:self];
}

@end
