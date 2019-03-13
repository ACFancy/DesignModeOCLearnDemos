//
//  AdultState.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/13.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AdultState.h"
#import "Human.h"

@implementation AdultState

- (void)work
{
    NSLog(@"%s", __FUNCTION__);
    [self.human setState:[Human oldState]];
}

@end
