//
//  ConcreteState1.m
//  StateDesignPattern
//
//  Created by User on 2019/3/5.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ConcreteState1.h"
#import "Context.h"

@implementation ConcreteState1

- (void)handle1
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)handle2
{
    [[self context] setCurrentState:[Context state2]];
    [[self context] handle2];
}

@end
