//
//  RunnerAgent.m
//  StructDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import "RunnerAgent.h"

@interface RunnerAgent ()

@property (nonatomic, strong) id<IRunner> runner;

@end

@implementation RunnerAgent

#pragma mark - init Methods
- (instancetype)initWithRunner:(id<IRunner>)runner
{
    if (self = [super init]) {
        _runner = runner;
    }
    return self;
}

#pragma mark - Public Methods
//代理有决定权
- (void)run
{
    if (arc4random_uniform(2) == 0) {
        NSLog(@"Agent Agree");
        [_runner run];
    } else {
        NSLog(@"Agent Disagree");
    }
}


@end
