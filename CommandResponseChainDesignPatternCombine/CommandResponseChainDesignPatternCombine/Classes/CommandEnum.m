//
//  CommandEnum.m
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "CommandEnum.h"

@implementation CommandEnum

+ (NSString *)valueOf:(NSString *)commandName
{
    if ([commandName hasPrefix:@"ls"]) {
        return @"LSCommand";
    } else if ([commandName hasPrefix:@"df"]) {
        return @"DFCommand";
    }
    return @"";
}

+ (NSArray *)fetchNames
{
    NSMutableArray *names = [NSMutableArray array];
    [names addObject:@"ls"];
    [names addObject:@"df"];
    return names.copy;
}

@end
