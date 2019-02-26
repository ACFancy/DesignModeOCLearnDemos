//
//  AMediator.m
//  MediatorDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AMediator.h"

@implementation AMediator

- (void)doSomething1
{
     @throw [NSException exceptionWithName:@"AbstractorMediatorCallErrorDomain" reason:@"Must Override In SubClass" userInfo:nil];
}

- (void)doSomething2
{
     @throw [NSException exceptionWithName:@"AbstractorMediatorCallErrorDomain" reason:@"Must Override In SubClass" userInfo:nil];
}

@end
