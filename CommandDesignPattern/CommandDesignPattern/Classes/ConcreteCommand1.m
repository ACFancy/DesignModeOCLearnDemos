//
//  ConcreteCommand1.m
//  CommandDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ConcreteCommand1.h"
#import "AReceiver.h"
#import "ConcreteReceiver1.h"

@interface ConcreteCommand1 ()
//对哪个Receiver类进行命令处理
@property (nonatomic, strong) AReceiver *receiver;

@end

@implementation ConcreteCommand1
  //构造函数传递接收者
- (instancetype)initWithReceiver:(AReceiver *)receiver
{
    if (self = [super init]) {
        _receiver = receiver;
    }
    return self;
}

//这确实简化了很多，每个命令完成单一的职责，而不是根据接收者的不同完成不同的职责。在高层模块的调用时就不用考虑接收者是谁的问题
- (instancetype)init
{
    //声明自己的默认接收者
    self = [super initWithCReceiver:[ConcreteReceiver1 new]];
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
