//
//  RunState.m
//  StateDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "RunningState.h"
#import "AContext.h"
#import "StoppingState.h"

@implementation RunningState

- (void)open
{
    
}

- (void)close
{
    
}

- (void)run
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)stop
{
    [[self aContext] setLiftState:[AContext stoppingState]];
    [[[self aContext] liftState] stop];
}

@end
