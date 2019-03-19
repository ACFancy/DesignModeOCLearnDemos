//
//  Interceptors.m
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

/*
 它实现了Iterable接口，提供了一个方便遍历拦截器的方法，这是迭代器模式。同时，由于是一个链结构，我们就想到了责任链，这里确实也是一个责任链模式，只是核心控制器上的过滤链是Servlet容器自己实现的，而拦截器链则需要我们自己编码实现
 */

#import "Interceptors.h"

@implementation Interceptors

- (instancetype)initWithList:(NSArray *)list
{
    if (self = [super init]) {
        
    }
    return self;
}

- (Iterator *)iterator
{
    return nil;
}

//拦截器链的执行方法
- (void)intercept
{
     //委托拦截器执行
}

@end
