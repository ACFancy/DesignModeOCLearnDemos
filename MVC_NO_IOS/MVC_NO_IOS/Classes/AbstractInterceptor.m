//
//  AbstractInterceptor.m
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

/*
 ● 前置拦截器
    在Action调用前执行，对Action需要的场景数据进行过滤或重构。
 ● 后置拦截器
    在Action调用后执行，负责回收场景，或对Action的后续事务进行处理。
 ● 环绕拦截器
    在Action调用前后都执行。
 */

#import "AbstractInterceptor.h"
#import "ValueStackHelper.h"

@interface AbstractInterceptor ()

@property (nonatomic, strong) ValueStack *valueStack;
//拦截器类型：前置、后置、环绕
@property (nonatomic, assign) NSInteger type;

@end

@implementation AbstractInterceptor

- (instancetype)init
{
    if (self = [super init]) {
        _valueStack = [ValueStackHelper getValueStack];
        _type = 0;
    }
    return self;
}

//拦截处理
- (void)exec
{
    
}

//子类实现的拦截器
- (void)intercept
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
