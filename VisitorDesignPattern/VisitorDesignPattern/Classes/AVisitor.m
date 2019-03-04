//
//  AVisitor.m
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AVisitor.h"
#import "ConcreteElement1.h"
#import "ConcreteElement2.h"

@implementation AVisitor

- (void)visitWithElement1:(ConcreteElement1 *)element1
{
    [element1 doSomething];
}

- (void)visitWithElement2:(ConcreteElement2 *)element2
{
    [element2 doSomething];
}

@end
