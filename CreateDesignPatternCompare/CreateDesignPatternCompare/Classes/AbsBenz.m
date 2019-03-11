//
//  AbsBenz.m
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AbsBenz.h"

@implementation AbsBenz

- (NSString *)getBand
{
    return @"Benz";
}

- (NSString *)getModel
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
