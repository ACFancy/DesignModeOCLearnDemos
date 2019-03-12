//
//  Decorator.m
//  StructDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Decorator.h"

@interface Decorator ()

@property (nonatomic, strong) id<ISwan> swan;

@end

@implementation Decorator

- (instancetype)initWithSwan:(id<ISwan>)swan
{
    if (self = [super init]) {
        _swan = swan;
    }
    return self;
}

- (void)fly
{
    [_swan fly];
}

- (void)cry
{
    [_swan cry];
}

- (void)desAppearance
{
    [_swan desAppearance];
}

@end
