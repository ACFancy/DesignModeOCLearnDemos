//
//  Calculator.m
//  StrategyDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Calculator.h"

static NSString * ADD_SYMBOL = @"+";
static NSString * SUB_SYMBOL = @"-";

@implementation Calculator

#pragma mark - Public Methods
- (NSInteger)execWithA:(NSInteger)a
                     b:(NSInteger)b
                symbol:(NSString *)symbol
{
    NSInteger result = 0;
    if ([symbol isEqualToString:ADD_SYMBOL]) {
        result = [self addWithA:a b:b];
    } else if ([symbol isEqualToString:SUB_SYMBOL]) {
        result = [self subWithA:a b:b];
    }
    return result;
}

- (NSInteger)exec2WithA:(NSInteger)a
                      b:(NSInteger)b
                 symbol:(NSString *)symbol
{
    return [symbol isEqualToString:ADD_SYMBOL] ? a + b : a - b;
}

#pragma mark - Private Methods
- (NSInteger)addWithA:(NSInteger)a b:(NSInteger)b
{
    return a + b;
}

- (NSInteger)subWithA:(NSInteger)a b:(NSInteger)b
{
    return a - b;
}

@end
