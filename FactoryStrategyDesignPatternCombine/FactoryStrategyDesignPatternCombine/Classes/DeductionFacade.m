//
//  DeductionFacade.m
//  FactoryStrategyDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import "DeductionFacade.h"
#import "Card.h"
#import "Trade.h"
#import "DeductionContext.h"
#import "StrategyMan.h"
#import "StrategyFactory.h"

@implementation DeductionFacade

#pragma mark - Public Methods
+ (Card *)deduct:(Card *)card trade:(Trade *)trade
{
    StrategyMan *reg = [self fetchDeductionType:trade];
    id<IDeduction> deduction = [StrategyFactory fetchDeduction:reg];
    DeductionContext *ctx = [[DeductionContext alloc] initWithDeduction:deduction];
    [ctx exec:card trade:trade];
    
    return card;
}

#pragma mark - Private Methods

/**
 在门面模式中已经明确地说明，门面类中不允许有业务逻辑存在，但是你这里还是有了一个getDeductionType方法，它可代表的是一个判断逻辑呀，这是为什么呢？是的，该方法完全可以移到其他Hepler类中，由于我们是示例代码，暂没有明确的业务含义，故编写在此处，读者在实际应用中，请把该方法放置到其他类中
 */
+ (StrategyMan *)fetchDeductionType:(Trade *)trade
{
    //使用条件语句，简化的说明（可以是一个状态或者责任链模式）
    if ([trade.tradeNo containsString:@"abc"]) {
        return [StrategyMan freeDeduction];
    } else {
        return [StrategyMan steadyDeduction];
    }
}

@end
