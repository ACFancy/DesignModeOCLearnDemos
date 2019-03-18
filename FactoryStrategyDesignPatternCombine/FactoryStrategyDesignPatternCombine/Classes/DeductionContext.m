//
//  DeductionContext.m
//  FactoryStrategyDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import "DeductionContext.h"
/*
 典型的策略上下文角色。扣款模块的策略已经定义完毕了，然后需要想办法解决策略模式的缺陷：它把所有的策略类都暴露出去，暴露得越多以后的修改风险也就越大
 */

@interface DeductionContext ()

@property (nonatomic, strong) id<IDeduction> deduction;

@end

@implementation DeductionContext

- (instancetype)initWithDeduction:(id<IDeduction>)deduction
{
    if (self = [super init]) {
        _deduction = deduction;
    }
    return self;
}

- (BOOL)exec:(Card *)card trade:(Trade *)trade
{
    return [_deduction exec:card trade:trade];
}

@end
