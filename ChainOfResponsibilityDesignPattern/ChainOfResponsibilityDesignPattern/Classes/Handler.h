//
//  Handler.h
//  ChainOfResponsibilityDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IWomen.h"

FOUNDATION_EXTERN NSInteger const FATHER_LEVEL_REQUEST;
FOUNDATION_EXTERN NSInteger const HUSBAND_LEVEL_REQUEST;
FOUNDATION_EXTERN NSInteger const SON_LEVEL_REQUEST;

NS_ASSUME_NONNULL_BEGIN

/*
 这三个类都很简单，构造方法是必须实现的，父类框定子类必须有一个显式构造函数，子类不实现编译不通过。通过构造方法我们设置了各个类能处理的请求类型，Father只能处理请求类型为1（也就是女儿）的请求；Husband只能处理请求类型类为2（也就是妻子）的请求，儿子只能处理请求类型为3（也就是母亲）的请求，那如果请求类型为4的该如何处理呢？在Handler中我们已经判断了，如何没有相应的处理者（也就是没有下一环节），则视为不同意。
 */
@interface Handler : NSObject

- (instancetype)initWithLevel:(NSInteger)level;

//一个女性（女儿、妻子或者是母亲）要求逛街，你要处理这个请求
- (void)handleMessage:(id<IWomen>)women;

/*
 * 如果不属于你处理的请求，你应该让她找下一个环节的人，如女儿出嫁了，
 * 还向父亲请示是否可以逛街，那父亲就应该告诉女儿，应该找丈夫请示
 */
- (void)setNext:(Handler *)handler;

//有请示那当然要回应
- (void)response:(id<IWomen>)women;

@end

NS_ASSUME_NONNULL_END
