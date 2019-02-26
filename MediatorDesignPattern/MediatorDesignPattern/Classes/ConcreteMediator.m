//
//  ConcreteMediator.m
//  MediatorDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ConcreteMediator.h"
#import "ConcreteColleague1.h"
#import "ConcreteColleague2.h"

@implementation ConcreteMediator

#pragma mark - Override Methods
//中介者所具有的方法doSomething1和doSomething2都是比较复杂的业务逻辑，为同事类服务，其实现是依赖各个同事类来完成的
- (void)doSomething1
{
    //调用同事类的方法，只要是public方法都可以调用
    [self.c1 selfMethod1];
    [self.c2 selfMethod2];
}

- (void)doSomething2
{
    [self.c1 depMethod1];
    [self.c2 depMethod2];
}


@end
