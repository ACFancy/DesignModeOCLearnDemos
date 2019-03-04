//
//  ConcreteElement2.m
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ConcreteElement2.h"

@implementation ConcreteElement2

- (void)doSomething
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)accept:(id<IAVisitor>)visitor
{
    [visitor visitWithElement2:self];
}

@end
