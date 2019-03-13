//
//  ChildState.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/13.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ChildState.h"
#import "Human.h"

@implementation ChildState

- (void)work
{
    NSLog(@"%s", __FUNCTION__);
    [self.human setState:[Human adultState]];
}

@end
