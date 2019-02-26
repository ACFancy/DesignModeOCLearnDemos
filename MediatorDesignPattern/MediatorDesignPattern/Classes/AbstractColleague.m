//
//  AbstractColleague.m
//  MediatorDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AbstractColleague.h"

@implementation AbstractColleague

- (instancetype)initWithMediator:(AbstractMediator *)mediator
{
    if (self = [super init]) {
        _mediator = mediator;
    }
    return self;
}

@end
