//
//  StrategyFactory.m
//  FactoryStrategyDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import "StrategyFactory.h"
#import "StrategyMan.h"

@implementation StrategyFactory

+ (id<IDeduction>)fetchDeduction:(StrategyMan *)strategy
{
    id<IDeduction> deduction;
    @try {
        deduction = [NSClassFromString([strategy fetchValue]) new];
    } @catch (NSException *exception) {
        //handle
    }
    return deduction;
}

@end
