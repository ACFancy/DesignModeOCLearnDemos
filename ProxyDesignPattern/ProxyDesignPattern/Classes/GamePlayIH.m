//
//  GamePlayIH.m
//  ProxyDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "GamePlayIH.h"
#import "NSObject+ProxyExtension.h"

@interface GamePlayIH ()
//被代理者
@property (nonatomic, strong) Class cls;
//被代理的实例
@property (nonatomic, strong) NSObject *object;

@end

@implementation GamePlayIH

//我要代理谁
- (instancetype)initWithObject:(NSObject *)object
{
    if (self = [super init]) {
        _object = object;
    }
    return self;
}

/*
 方法是接口InvocationHandler定义必须实现的，它完成对真实方法的调用。
 动态代理是根据被代理的接口生成所有的方法，也就是说给定一个接口，动态代理会宣称“我已经实现该接口下的所有方法了”
 默认情况下所有的方法返回值都是空的，是的，代理已经实现它了，但是没有任何的逻辑含义，那怎么办？好办，通过InvocationHandler接口，所有方法都由该Handler来进行处理，即所有被代理的方法都由InvocationHandler接管实际的处理任务。
 */
//- (NSObject *)invokeWithProxy:(NSObject *)proxy sel:(SEL)sel args:(NSObject *)arg, ...
//{
//    NSProxy
//    va_list args;
//    va_start(args, arg);
//    id result = [_object pe_PerformSelector:sel withArguments:args];
//    va_end(args);
//    return result;
//}

- (BOOL)respondsToSelector:(SEL)aSelector
{
    if ([_object respondsToSelector:aSelector]) {
        return YES;
    }
    return [super respondsToSelector:aSelector];
}

- (id)forwardingTargetForSelector:(SEL)aSelector
{
    if ([_object respondsToSelector:aSelector]) {
        return _object;
    } else {
        return [super forwardingTargetForSelector:aSelector];
    }
}

- (void)forwardInvocation:(NSInvocation *)anInvocation
{
    if ([_object respondsToSelector:anInvocation.selector]) {
        [anInvocation invokeWithTarget:_object];
    } else {
        [super forwardInvocation:anInvocation];
    }
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector
{
    NSMethodSignature *sign = nil;
    if (_object) {
        sign = [_object methodSignatureForSelector:aSelector];
    }
    if (sign) {
        //然后看看自己的账号是不是被人盗了，非常好的方法，这就是AOP编程
        //AOP编程没有使用什么新的技术，但是它对我们的设计、编码有非常大的影响，对于日志、事务、权限等都可以在系统设计阶段不用考虑，而在设计后通过AOP的方式切过去。
        if ([NSStringFromSelector(aSelector) isEqualToString:@"loginWithUser:password:"]) {
            NSLog(@"dog- 异地登录提醒");
        }
        return sign;
    }
    return [super methodSignatureForSelector:aSelector];
}

@end
