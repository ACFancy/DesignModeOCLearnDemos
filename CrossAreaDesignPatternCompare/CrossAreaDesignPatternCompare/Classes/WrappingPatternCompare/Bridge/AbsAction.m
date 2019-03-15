//
//  AbsAction.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AbsAction.h"

@implementation AbsAction

- (void)desc
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
