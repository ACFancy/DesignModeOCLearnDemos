//
//  Context.m
//  StrategyDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Context.h"

@interface Context ()

@property (nonatomic, strong) id<IStrategy> strategy;

@end

@implementation Context

- (instancetype)initWithStrategy:(id<IStrategy>)strategy
{
    if (self = [super init]) {
        _strategy = strategy;
    }
    return self;
}

- (void)operate
{
    [_strategy operate];
}

@end
