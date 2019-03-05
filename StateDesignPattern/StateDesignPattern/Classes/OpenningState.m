//
//  OpenningState.m
//  StateDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "OpenningState.h"
#import "AContext.h"
#import "ClosingState.h"

@implementation OpenningState

#pragma mark - Override Methods
- (void)open
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)close
{
    [[self aContext] setLiftState:[AContext closingState]];
    [[[self aContext] liftState] close];
}

- (void)run
{
    
}

- (void)stop
{
    
}

@end
