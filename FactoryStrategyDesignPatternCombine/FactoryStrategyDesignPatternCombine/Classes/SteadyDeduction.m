//
//  SteadyDeduction.m
//  FactoryStrategyDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import "SteadyDeduction.h"
#import "Card.h"
#import "Trade.h"

@implementation SteadyDeduction

- (BOOL)exec:(Card *)card trade:(Trade *)trade
{
    NSInteger halfMoney = (NSInteger)round(trade.amount / 2.0);
    [card setFreeMoney:card.freeMoney - halfMoney];
    [card setSteadyMoney:card.steadyMoney - halfMoney];
    return YES;
}

@end
