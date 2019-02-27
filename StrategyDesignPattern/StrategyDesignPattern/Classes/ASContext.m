//
//  ASContext.m
//  StrategyDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ASContext.h"

@interface ASContext ()

@property (nonatomic, strong) id<ICalculator> calculator;

@end

@implementation ASContext

- (instancetype)initWithCalculator:(id<ICalculator>)calculator
{
    if (self = [super init]) {
        _calculator = calculator;
    }
    return self;
}

- (NSInteger)execWithA:(NSInteger)a
                     b:(NSInteger)b
                symbol:(NSString *)symbol
{
    return [_calculator execWithA:a b:b];
}

@end
