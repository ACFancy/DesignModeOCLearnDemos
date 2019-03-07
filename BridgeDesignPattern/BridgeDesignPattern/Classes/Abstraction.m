//
//  Abstraction.m
//  BridgeDesignPattern
//
//  Created by User on 2019/3/7.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Abstraction.h"
#import "Implementor.h"

@interface Abstraction ()

//定义对实现化角色的引用
@property (nonatomic, strong) id<Implementor> imp;

@end

@implementation Abstraction

//约束子类必须实现该构造函数
//各位可能要问，为什么要增加一个构造函数？答案是为了提醒子类，你必须做这项工作，指定实现者，特别是已经明确了实现者，则尽量清晰明确地定义出来。
- (instancetype)initWithImp:(id<Implementor>)imp
{
    if (self = [super init]) {
        _imp = imp;
    }
    return self;
}

//自身的行为和属性
- (void)request
{
    [_imp doSomething];
}

//获得实现化角色
- (id<Implementor>)fetchImp
{
    return _imp;
}

@end
