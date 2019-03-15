//
//  AbsMediator.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AbsMediator.h"
#import "Salary.h"
#import "Tax.h"
#import "Position.h"


@implementation AbsMediator

- (instancetype)init
{
    if (self = [super init]) {
        _salary = [Salary new];
        _tax = [Tax new];
        _position = [Position new];
    }
    return self;
}

- (void)upWithSalary:(id<ISalary>)salary
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

- (void)downWithSalary:(id<ISalary>)salary
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

- (void)upWithPosition:(id<IPosition>)position
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

- (void)downWithPosition:(id<IPosition>)position
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

- (void)upWithTax:(id<ITax>)tax
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

- (void)downWithTax:(id<ITax>)tax
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
