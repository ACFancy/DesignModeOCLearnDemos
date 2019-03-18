//
//  FreeDeduction.m
//  FactoryStrategyDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import "FreeDeduction.h"
#import "Card.h"
#import "Trade.h"

@implementation FreeDeduction

- (BOOL)exec:(Card *)card trade:(Trade *)trade
{
    [card setFreeMoney:card.freeMoney - trade.amount];
    return YES;
}

@end
