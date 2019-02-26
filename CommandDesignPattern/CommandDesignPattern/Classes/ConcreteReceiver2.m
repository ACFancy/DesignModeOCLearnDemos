//
//  ConcreteReceiver2.m
//  CommandDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ConcreteReceiver2.h"

@implementation ConcreteReceiver2

//每个接收者都必须处理一定的业务逻辑
- (void)doSomething
{
    NSLog(@"%s", __FUNCTION__);
}

@end
