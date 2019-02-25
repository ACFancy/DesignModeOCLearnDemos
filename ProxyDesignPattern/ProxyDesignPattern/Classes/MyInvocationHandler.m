//
//  MyInvocationHandler.m
//  ProxyDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "MyInvocationHandler.h"

@interface MyInvocationHandler ()

@property (nonatomic, strong) NSObject *object;

@end

@implementation MyInvocationHandler

- (instancetype)initWithObject:(NSObject *)object
{
    if (self = [super init]) {
        _object = object;
    }
    return self;
}

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
        return sign;
    }
    return [super methodSignatureForSelector:aSelector];
}

@end
