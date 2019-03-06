//
//  TerminalExpression.h
//  InterpreterDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AbstractExpression.h"

NS_ASSUME_NONNULL_BEGIN

//终结符表达式
//通常，终结符表达式比较简单，主要是处理场景元素和数据的转换。
@interface TerminalExpression : AbstractExpression

@end

NS_ASSUME_NONNULL_END
