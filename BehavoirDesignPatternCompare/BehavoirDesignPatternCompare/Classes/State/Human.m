//
//  Human.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/13.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Human.h"
#import "HumanState.h"
#import "ChildState.h"
#import "AdultState.h"
#import "OldState.h"

@interface Human ()

@property (nonatomic, strong) HumanState *state;

@end

@implementation Human

+ (HumanState *)childState
{
    static HumanState *state;
    if (state == nil) {
        state = [ChildState new];
    }
    return state;
}

+ (HumanState *)adultState
{
    static HumanState *state;
    if (state == nil) {
        state = [AdultState new];
    }
    return state;
}

+ (HumanState *)oldState
{
    static HumanState *state;
    if (state == nil) {
        state = [OldState new];
    }
    return state;
}

- (void)setState:(HumanState *)state
{
    _state = state;
    [_state setHuman:self];
}

- (void)work
{
    [_state work];
}


@end
