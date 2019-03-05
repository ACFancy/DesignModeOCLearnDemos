//
//  AState.m
//  StateDesignPattern
//
//  Created by User on 2019/3/5.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AState.h"

@implementation AState

- (void)handle1
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

- (void)handle2
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
