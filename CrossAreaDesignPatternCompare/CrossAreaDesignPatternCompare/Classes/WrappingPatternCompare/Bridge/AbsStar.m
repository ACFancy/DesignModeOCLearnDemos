//
//  AbsStar.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AbsStar.h"
#import "AbsAction.h"

@interface AbsStar ()

@property (nonatomic, strong) AbsAction *action;

@end

@implementation AbsStar

- (instancetype)initWithAction:(AbsAction *)action
{
    if (self = [super init]) {
        _action = action;
    }
    return self;
}

- (void)doJob
{
    [_action desc];
}

@end
