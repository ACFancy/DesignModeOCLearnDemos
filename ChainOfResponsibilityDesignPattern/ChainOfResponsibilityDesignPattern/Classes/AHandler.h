//
//  AHandler.h
//  ChainOfResponsibilityDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class ARequest, AResponse, ALevel;
/*
 抽象的处理者实现三个职责：
 1.是定义一个请求的处理方法handleMessage，唯一对外开放的方法；
 2.是定义一个链的编排方法setNext，设置下一个处理者；
 3.是定义了具体的请求者必须实现的两个方法：定义自己能够处理的级别fetchHandlerLevel和具体的处理任务echo。
 
 注意　在责任链模式中一个请求发送到链中后，前一节点消费部分消息，然后交由后续节点继续处理，最终可以有处理结果也可以没有处理结果，读者可以不用理会什么纯的、不纯的责任链模式。同时，请读者注意handlerMessage方法前的final关键字，可以阅读第10章的模板方法模式。
 在处理者中涉及三个类：
    Level类负责定义请求和处理级别，
    Request类负责封装请求，
    Response负责封装链中返回的结果，
 该三个类都需要根据业务产生，读者可以在实际应用中完成相关的业务填充
 */
//抽象处理者
@interface AHandler : NSObject

//每个处理者都必须对请求做出处理
- (AResponse *)handleMessage:(ARequest *)request;

//设置下一个处理者是谁
- (void)setNext:(AHandler *)handler;

//每个处理者都有一个处理级别
- (ALevel *)fetchHandlerLevel;

//每个处理者都必须实现处理任务
- (AResponse *)echo:(ARequest *)request;

@end

NS_ASSUME_NONNULL_END
