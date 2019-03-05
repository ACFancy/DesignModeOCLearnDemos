//
//  CloseState.m
//  StateDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ClosingState.h"
#import "AContext.h"
#import "OpenningState.h"
#import "RunningState.h"
#import "StoppingState.h"

@implementation ClosingState

- (void)open
{
    //由于Context -strong-> LiftState 而 LiftState -weak-> Context
    //当外界没有持有LiftState, 替换为新的 LiftState后，会被释放成野指针，再次访问 context就会报错, 所以在Client中需要一个局部变量先持有这个LiftState,避免过早释放，导致野指针问题
    [[self aContext] setLiftState:[AContext openningState]];
    LiftState *state = [[self aContext] liftState];
    [state open];
}

- (void)close
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)run
{
    [[self aContext] setLiftState:[AContext runningState]];
    [[[self aContext] liftState] run];
}

- (void)stop
{
    [[self aContext] setLiftState:[AContext stoppingState]];
    [[[self aContext] liftState] stop];
}


@end
