//
//  ConcreteCommand2.m
//  CommandDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ConcreteCommand2.h"
#import "AReceiver.h"
#import "ConcreteReceiver2.h"

@interface ConcreteCommand2 ()
//对哪个Receiver类进行命令处理
@property (nonatomic, strong) AReceiver *receiver;

@end

@implementation ConcreteCommand2

//构造函数传递接收者
- (instancetype)initWithReceiver:(AReceiver *)receiver
{
    if (self = [super init]) {
        _receiver = receiver;
    }
    return self;
}

- (instancetype)init
{
    self = [super initWithCReceiver:[ConcreteReceiver2 new]];
    return self;
}

//必须实现一个命令
- (void)execute
{
    //业务处理
    if (_receiver) {
        [_receiver doSomething];
    } else {
        [self.cReceiver doSomething];
    }
}

@end
