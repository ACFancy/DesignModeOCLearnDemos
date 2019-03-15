//
//  AbsColleague.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AbsColleague.h"

@implementation AbsColleague

- (instancetype)initWithMediator:(AbsMediator *)mediator
{
    if (self = [super init]) {
        _mediator = mediator;
    }
    return self;
}

@end
