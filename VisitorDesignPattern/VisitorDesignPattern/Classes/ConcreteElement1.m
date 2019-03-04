//
//  ConcreteElement1.m
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ConcreteElement1.h"

@implementation ConcreteElement1

- (void)doSomething
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)accept:(id<IAVisitor>)visitor
{
    [visitor visitWithElement1:self];
}

@end
