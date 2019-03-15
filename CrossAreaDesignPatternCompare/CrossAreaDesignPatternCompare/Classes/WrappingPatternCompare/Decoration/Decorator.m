//
//  Decorator.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Decorator.h"

@interface Decorator ()

@property (nonatomic, strong) id<IDStar> star;

@end

@implementation Decorator

- (instancetype)initWithStar:(id<IDStar>)star
{
    if (self = [super init]) {
        _star = star;
    }
    return self;
}

- (void)act
{
    [_star act];
}

@end
