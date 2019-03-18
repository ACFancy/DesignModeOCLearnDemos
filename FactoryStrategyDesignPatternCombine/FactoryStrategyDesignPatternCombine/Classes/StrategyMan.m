//
//  StrategyMan.m
//  FactoryStrategyDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import "StrategyMan.h"
#import "IDeduction.h"

@interface StrategyMan ()

@property (nonatomic, strong) NSString *value;

@end

@implementation StrategyMan

- (instancetype)initWithValue:(NSString *)value
{
    if (self = [super init]) {
        _value = value;
    }
    return self;
}

+ (instancetype)steadyDeduction
{
    return [[self alloc] initWithValue:@"SteadyDeduction"];
}

+ (instancetype)freeDeduction
{
    return [[self alloc] initWithValue:@"FreeDeduction"];;
}

- (NSString *)fetchValue
{
    return _value;
}

@end
