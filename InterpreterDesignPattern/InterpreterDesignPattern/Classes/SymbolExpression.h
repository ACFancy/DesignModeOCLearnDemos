//
//  SymbolExpression.h
//  InterpreterDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Expression.h"

NS_ASSUME_NONNULL_BEGIN

//抽象运算符号解析器
@interface SymbolExpression : Expression

@property (nonatomic, strong) Expression *left;
@property (nonatomic, strong) Expression *right;

- (instancetype)initWithLeft:(Expression *)left right:(Expression *)right;

@end

NS_ASSUME_NONNULL_END
