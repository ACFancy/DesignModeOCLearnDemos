//
//  Mediator.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Mediator.h"

@implementation Mediator

#pragma mark - Public Methods
- (void)upWithSalary:(id<ISalary>)salary
{
    [self upSalary];
    [self upTax];
}

- (void)upWithPosition:(id<IPosition>)position
{
    [self upPosition];
    [self upSalary];
    [self upTax];
}

- (void)upWithTax:(id<ITax>)tax
{
    [self upTax];
    [self downSalary];
}

- (void)downWithSalary:(id<ISalary>)salary
{
    [self downSalary];
    [self downTax];
}

- (void)downWithPosition:(id<IPosition>)position
{
    [self downPosition];
    [self downSalary];
    [self downTax];
}

- (void)downWithTax:(id<ITax>)tax
{
    [self downTax];
    [self upSalary];
}

#pragma mark - Private Methods
- (void)upSalary
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)upTax
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)upPosition
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)downSalary
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)downTax
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)downPosition
{
    NSLog(@"%s", __FUNCTION__);
}

@end
