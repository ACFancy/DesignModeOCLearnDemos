//
//  StopState.m
//  StateDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "StoppingState.h"
#import "AContext.h"
#import "OpenningState.h"
#import "RunningState.h"

@implementation StoppingState

- (void)open
{
    [[self aContext] setLiftState:[AContext openningState]];
    [[[self aContext] liftState] open];
}

- (void)close
{
    
}

- (void)run
{
    [[self aContext] setLiftState:[AContext runningState]];
    [[[self aContext] liftState] run];
}

- (void)stop
{
    NSLog(@"%s", __FUNCTION__);
}

@end
