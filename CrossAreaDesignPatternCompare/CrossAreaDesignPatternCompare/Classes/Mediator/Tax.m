//
//  Tax.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Tax.h"
#import "AbsMediator.h"

@implementation Tax

- (void)raise
{
    [self.mediator upWithTax:self];
}

- (void)drop
{
    [self.mediator downWithTax:self];
}

@end
