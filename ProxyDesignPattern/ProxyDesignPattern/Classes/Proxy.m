//
//  Proxy.m
//  ProxyDesignPattern
//
//  Created by User on 2019/2/22.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Proxy.h"
#import "Subject.h"

//一个代理类可以代理多个被委托者或被代理者，因此一个代理类具体代理哪个真实主题角色，是由场景类决定的。
//最简单的情况就是一个主题类和一个代理类，这是最简洁的代理模式
//在通常情况下，一个接口只需要一个代理类就可以了，具体代理哪个实现类由高层模块来决定，也就是在代理类的构造函数中传递被代理者
@interface Proxy ()

@property (nonatomic, strong) id<Subject> subject;

@end

@implementation Proxy

//你要代理谁就产生该代理的实例，然后把被代理者传递进来，该模式在实际的项目应用中比较广泛。
- (instancetype)initWithSubject:(id<Subject>)subject
{
    if (self = [super init]) {
        _subject = subject;
    }
    return self;
}

- (void)request
{
    [self before];
    [_subject request];
    [self after];
}

//为什么会出现before和after方法，继续看下去，这是一个“引子”，能够引出一个崭新的编程模式。
#pragma mark - Private Methods
- (void)before
{
    //预处理
}

- (void)after
{
     //善后处理
}
@end
