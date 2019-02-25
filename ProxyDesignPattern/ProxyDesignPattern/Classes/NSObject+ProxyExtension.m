//
//  NSObject+ProxyExtension.m
//  ProxyDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "NSObject+ProxyExtension.h"

@implementation NSObject (ProxyExtension)


- (void)pe_PerformSelector:(SEL)aSelector
                  onThread:(NSThread *)aThread
             waitUntilDonw:(BOOL)wait withObjects:(id)arg, ...
{
    NSArray *argsArray = nil;
    if (arg) {
        va_list args;
        va_start(args, arg);
        NSMutableArray *tempArray = [NSMutableArray array];
        id obj;
        while ((obj = va_arg(args, id))) {
            [tempArray addObject:obj];
        }
        argsArray = tempArray.copy;
        va_end(args);
    }
    NSInvocation *invocation = [self pe_InvocationForSelector:aSelector withObjects:argsArray];
    
    [invocation retainArguments];
    [invocation performSelector:@selector(invoke) onThread:aThread withObject:nil waitUntilDone:wait];
}

- (nullable id)pe_PerformSelector:(SEL)aSelector
                      withObjects:(id)arg, ...
{
    va_list args;
    va_start(args, arg);
    id result = nil;
    result = [self pe_PerformSelector:aSelector withArguments:args];
    va_end(args);
    return result;
}

- (nullable id)pe_PerformSelector:(SEL)aSelector
                    withArguments:(va_list)args;
{
    NSArray *argsArray = nil;
    if (args != NULL) {
        while (args) {
            NSMutableArray *tempArray = [NSMutableArray array];
            id obj;
            while ((obj = va_arg(args, id))) {
                [tempArray addObject:obj];
            }
            argsArray = tempArray.copy;
        }
    }
    NSInvocation *invocation = [self pe_InvocationForSelector:aSelector withObjects:argsArray];
    if (invocation == nil) {
        return nil;
    }
    
    [invocation invoke];
    
    id result = nil;
    NSMethodSignature *sign = [self methodSignatureForSelector:aSelector];
    if (sign.methodReturnLength > 0) {
        [invocation getReturnValue:&result];
    }
    return result;
}

- (nullable NSInvocation *)pe_InvocationForSelector:(SEL)aSelector
                                        withObjects:(NSArray *)args;
{
    NSMethodSignature *sign = [self methodSignatureForSelector:aSelector];
    if (sign == nil) {
        return nil;
    }
    
    NSUInteger argsNum = sign.numberOfArguments;
    NSInteger count = MIN(args.count, argsNum - 2);
    
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:sign];
    invocation.target = self;
    invocation.selector = aSelector;
    
    for (NSInteger i = 0; i < count; i++) {
        id arg = args[i];
        [invocation setArgument:&arg atIndex:i+2];
    }
    return invocation;
}

@end
