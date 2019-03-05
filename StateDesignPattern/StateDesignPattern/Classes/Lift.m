
//
//  Lift.m
//  StateDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Lift.h"

@interface Lift ()

@property (nonatomic, assign) NSInteger state;

@end

@implementation Lift

- (void)setState:(NSInteger)state
{
    _state = state;
}

- (void)open
{
    switch (_state) {
        case CLOSING_STATE:
        case STOPPING_STATE:
            [self openWithoutLogic];
            [self setState:OPENING_STATE];
            break;
        default:
            //DO NO THING
            break;
    }
}

- (void)close
{
    switch (_state) {
        case OPENING_STATE:
            [self openWithoutLogic];
            [self setState:OPENING_STATE];
            break;
        default:
            //DO NO THING
            break;
    }
}

- (void)run
{
    switch (_state) {
        case STOPPING_STATE:
            [self stopWithoutLogic];
            [self setState:STOPPING_STATE];
            break;
        default:
            //DO NO THING
            break;
    }
}

- (void)stop
{
    switch (_state) {
        case OPENING_STATE:
            [self openWithoutLogic];
            [self setState:OPENING_STATE];
            break;
        case RUNNING_STATE:
            [self runWithoutLogic];
            [self setState:RUNNING_STATE];
            break;
        default:
            //DO NO THING
            break;
    }
}

#pragma mark - Private Methods
- (void)openWithoutLogic
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)closeWithoutLogic
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)runWithoutLogic
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)stopWithoutLogic
{
    NSLog(@"%s", __FUNCTION__);
}

@end
