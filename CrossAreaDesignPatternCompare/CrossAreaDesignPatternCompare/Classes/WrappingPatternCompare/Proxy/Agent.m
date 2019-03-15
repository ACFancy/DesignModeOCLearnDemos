//
//  Agent.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Agent.h"

@interface Agent ()

@property (nonatomic, strong) id<IStar> star;

@end

@implementation Agent

- (instancetype)initWithStar:(id<IStar>)star
{
    if (self = [super init]) {
        _star = star;
    }
    return self;
}

- (void)sign
{
    [_star sign];
}

@end
