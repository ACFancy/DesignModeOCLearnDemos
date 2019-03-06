//
//  NonterminalExpression.h
//  InterpreterDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AbstractExpression.h"

NS_ASSUME_NONNULL_BEGIN

//非终结符表达式
//每个非终结符表达式都代表了一个文法规则，并且每个文法规则都只关心自己周边的文法规则的结果（注意是结果），因此这就产生了每个非终结符表达式调用自己周边的非终结符表达式，然后最终、最小的文法规则就是终结符表达式，终结符表达式的概念就是如此，不能够再参与比自己更小的文法运算了。
@interface NonterminalExpression : AbstractExpression

@property (nonatomic, strong) AbstractExpression *expression;

//每个非终结符表达式都会对其他表达式产生依赖
- (instancetype)initWithExpression:(AbstractExpression *)expression;

@end

NS_ASSUME_NONNULL_END
