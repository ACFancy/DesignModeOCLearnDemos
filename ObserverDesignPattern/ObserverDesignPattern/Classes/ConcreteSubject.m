//
//  ConcreteSubject.m
//  ObserverDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ConcreteSubject.h"

@implementation ConcreteSubject

- (void)doSomething
{
    //TODO:
    [self notifyObservers];
}

@end
