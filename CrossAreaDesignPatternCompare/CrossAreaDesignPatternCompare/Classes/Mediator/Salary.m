//
//  Salary.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Salary.h"
#import "AbsMediator.h"

@implementation Salary

- (void)increaseSalary
{
    [self.mediator upWithSalary:self];
}

- (void)decreaseSalary
{
    [self.mediator downWithSalary:self];
}

@end
