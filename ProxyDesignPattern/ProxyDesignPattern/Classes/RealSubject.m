//
//  RealSubject.m
//  ProxyDesignPattern
//
//  Created by User on 2019/2/22.
//  Copyright © 2019年 User. All rights reserved.
//

#import "RealSubject.h"
#import "Subject.h"

// 真实主题类
@implementation RealSubject

- (void)request
{
    NSLog(@"%s", __FUNCTION__);
    //业务逻辑处理
}
//RealSubject是一个正常的业务实现类，代理模式的核心就在代理类上

- (void)doSomething:(NSString *)str
{
    NSLog(@"%s-%@", __FUNCTION__, str);
}

@end
