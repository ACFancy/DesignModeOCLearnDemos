//
//  Client.m
//  AbstractFactoryDesignPattern
//
//  Created by User on 9/6/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "Client.h"
#import "Creator1.h"
#import "Creator2.h"

@implementation Client

+ (void)execute {
    id<AbstractCreator> creator1 = [Creator1 new];
    id<AbstractCreator> creator2 = [Creator2 new];
    id<AbstractProductA> a1 = [creator1 createProductA];
    id<AbstractProductA> a2 = [creator2 createProductA];
    id<AbstractProductB> b1 = [creator1 createProductB];
    id<AbstractProductB> b2 = [creator2 createProductB];
    [a1 doSomething];
    [a2 doSomething];
    [b1 doSomething];
    [b2 doSomething];
}

@end
