//
//  AContext.m
//  StrategyDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AContext.h"

@interface AContext ()

//抽象策略
@property (nonatomic, strong) id<Strategy> strategy;

@end

@implementation AContext

- (instancetype)initWithStrategy:(id<Strategy>)strategy
{
    if (self = [super init]) {
        _strategy = strategy;
    }
    return self;
}

#pragma mark - Public Methods
- (void)doAnything
{
    [_strategy dowSomething];
}

@end
