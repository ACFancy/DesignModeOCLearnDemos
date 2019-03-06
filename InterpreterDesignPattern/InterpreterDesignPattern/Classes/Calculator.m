//
//  Calculator.m
//  InterpreterDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Calculator.h"
#import "VarExpression.h"
#import "AddExpression.h"
#import "SubExpression.h"

@interface Calculator ()

@property (nonatomic, strong) Expression *expression;

@end

@implementation Calculator

- (instancetype)initWithExpStr:(NSString *)expStr
{
    if (self = [super init]) {
        NSMutableArray *stack = [NSMutableArray array];
        Expression *left;
        Expression *right;
        for (NSInteger i = 0; i < expStr.length; i++) {
            NSString *charStr = [expStr substringWithRange:NSMakeRange(i, 1)];
            if ([charStr isEqualToString:@"+"]) {
                left = stack.lastObject;
                [stack removeLastObject];
                right = [[VarExpression alloc] initWithKey:[expStr substringWithRange:NSMakeRange(++i, 1)]];
                [stack addObject:[[AddExpression alloc] initWithLeft:left right:right]];
            } else if ([charStr isEqualToString:@"-"]) {
                left = stack.lastObject;
                [stack removeLastObject];
                right = [[VarExpression alloc] initWithKey:[expStr substringWithRange:NSMakeRange(++i, 1)]];
                [stack addObject:[[SubExpression alloc] initWithLeft:left right:right]];
            } else {
                [stack addObject:[[VarExpression alloc] initWithKey:charStr]];
            }
        }
        _expression = stack.lastObject;
        [stack removeLastObject];
    }
    return self;
}

- (NSInteger)run:(NSDictionary<NSString *, NSNumber *> *)var
{
    return [_expression interpreter:var];
}


@end
