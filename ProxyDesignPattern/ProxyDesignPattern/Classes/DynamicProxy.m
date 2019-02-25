//
//  DynamicProxy.m
//  ProxyDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "DynamicProxy.h"
#import "BeforeAdvice.h"


@implementation DynamicProxy

//在这里插入了较多的AOP术语，如在什么地方（连接点）执行什么行为（通知）。我们在这里实现了一个简单的横切面编程，有经验的读者可以看看AOP的配置文件就会明白这段代码的意义了
- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
    NSMethodSignature *sign = [super methodSignatureForSelector:sel];
    if (YES) {
        //条件自行调整
        [[BeforeAdvice new] exec];
    }
    return sign;
}

@end
