//
//  NonterminalExpression.m
//  InterpreterDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import "NonterminalExpression.h"

@implementation NonterminalExpression

- (instancetype)initWithExpression:(AbstractExpression *)expression
{
    if (self = [super init]) {
        _expression = expression;
    }
    return self;
}

- (NSObject *)interpreter:(Context *)ctx
{
    //进行文法处理
    return nil;
}

@end
