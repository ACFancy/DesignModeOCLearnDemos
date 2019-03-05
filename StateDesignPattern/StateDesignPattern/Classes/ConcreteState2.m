//
//  ConcreteState2.m
//  StateDesignPattern
//
//  Created by User on 2019/3/5.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ConcreteState2.h"
#import "Context.h"

@implementation ConcreteState2

- (void)handle1
{
    [[self context] setCurrentState:[Context state1]];
    [[self context] handle1];
}

- (void)handle2
{
     NSLog(@"%s", __FUNCTION__);
}

@end
