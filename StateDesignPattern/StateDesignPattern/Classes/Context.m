//
//  Context.m
//  StateDesignPattern
//
//  Created by User on 2019/3/5.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Context.h"
#import "AState.h"

@implementation Context

+ (ConcreteState1 *)state1
{
    static ConcreteState1 *state1;
    if (state1 == nil) {
       state1 = [ConcreteState1 new];
    }
    return state1;
}

+ (ConcreteState2 *)state2
{
    static ConcreteState2 *state2;
    if (state2 == nil) {
        state2 = [ConcreteState2 new];
    }
    return state2;
}

- (void)setCurrentState:(AState *)currentState
{
    _currentState = currentState;
    //切换状态
    [_currentState setContext:self];
}

- (void)handle1
{
    [_currentState handle1];
}

- (void)handle2
{
    [_currentState handle2];
}

@end
