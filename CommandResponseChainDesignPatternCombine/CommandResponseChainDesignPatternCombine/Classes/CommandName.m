//
//  CommandName.m
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "CommandName.h"
#import "CommandVO.h"

@interface CommandName ()

@property (nonatomic, strong) CommandName *nextOperator;

@end

@implementation CommandName

- (NSString *)handleMessage:(CommandVO *)vo
{
    NSString *result;
    if ([vo fetchParam].count == 0 ||
        [[vo fetchParam] containsObject:[self fetchOperateParam]]) {
        result = [self echo:vo];
    } else if (_nextOperator != nil) {
        result = [_nextOperator handleMessage:vo];
    } else {
        result = @"命令无法执行";
    }
    
    return result;
}

- (void)setNext:(CommandName *)next
{
    _nextOperator = next;
}

- (NSString *)fetchOperateParam
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

- (NSString *)echo:(CommandVO *)vo
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
