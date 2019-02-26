//
//  ConcreteColleague2.m
//  MediatorDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ConcreteColleague2.h"
#import "AMediator.h"

@implementation ConcreteColleague2

//自有方法 self-method
- (void)selfMethod2
{
    //处理自己的业务逻辑
    NSLog(@"%s", __FUNCTION__);
}

//依赖方法 dep-method
- (void)depMethod2
{
    //处理自己的业务逻辑
    //自己不能处理的业务逻辑，委托给中介者处理
    [self.mediator doSomething2];
}


@end
