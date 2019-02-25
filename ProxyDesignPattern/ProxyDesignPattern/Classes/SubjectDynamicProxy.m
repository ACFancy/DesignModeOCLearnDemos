//
//  SubjectDynamicProxy.m
//  ProxyDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "SubjectDynamicProxy.h"

@implementation SubjectDynamicProxy

+ (instancetype)proxyWithObject:(NSObject *)object
{
    SubjectDynamicProxy *proxy = [[SubjectDynamicProxy alloc] initWithObjects:object, nil];
    return proxy;
}

@end
