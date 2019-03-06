//
//  AbstractExpression.h
//  InterpreterDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Context;

// 抽象表达式
//抽象表达式是生成语法集合（也叫做语法树）的关键，每个语法集合完成指定语法解析任务，它是通过递归调用的方式，最终由最小的语法单元进行解析完成。
@interface AbstractExpression : NSObject

//每个表达式必须有一个解析任务
- (NSObject *)interpreter:(Context *)ctx;

@end

NS_ASSUME_NONNULL_END
