//
//  SymbolExpression.m
//  InterpreterDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import "SymbolExpression.h"

@implementation SymbolExpression

- (instancetype)initWithLeft:(Expression *)left right:(Expression *)right
{
    if (self = [super init]) {
        _left = left;
        _right = right;
    }
    return self;
}

@end
