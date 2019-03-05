//
//  Context.m
//  StateDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AContext.h"
#import "OpenningState.h"
#import "ClosingState.h"
#import "RunningState.h"
#import "StoppingState.h"

@interface AContext ()

@property (nonatomic, strong) LiftState *liftState;

@end

@implementation AContext

@synthesize liftState = _liftState;

+ (OpenningState *)openningState
{
    static OpenningState *openningState;
    if (openningState == nil) {
        openningState = [OpenningState new];
    }
    return openningState;
}

+ (ClosingState *)closingState
{
    static ClosingState *closingState;
    if (closingState == nil) {
        closingState = [ClosingState new];
    }
    return closingState;
}

+ (RunningState *)runningState
{
    static RunningState *runningState;
    if (runningState == nil) {
        runningState = [RunningState new];
    }
    return runningState;
}

+ (StoppingState *)stoppingState
{
    static StoppingState *stoppingState;
    if (stoppingState == nil) {
        stoppingState = [StoppingState new];
    }
    return stoppingState;
}

- (void)setLiftState:(LiftState *)liftState
{
    _liftState = liftState;
    [_liftState setAContext:self];
}

- (LiftState *)liftState
{
    return _liftState;
}

- (void)open
{
    [_liftState open];
}

- (void)close
{
    [_liftState close];
}

- (void)run
{
    [_liftState run];
}

- (void)stop
{
    [_liftState stop];
}

@end
