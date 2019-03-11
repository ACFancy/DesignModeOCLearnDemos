//
//  AbsBMW.m
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AbsBMW.h"

@implementation AbsBMW

- (NSString *)getBand
{
    return @"BMW";
}

- (NSString *)getModel
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
