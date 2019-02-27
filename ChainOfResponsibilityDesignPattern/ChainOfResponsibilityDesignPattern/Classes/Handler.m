//
//  Handler.m
//  ChainOfResponsibilityDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Handler.h"

NSInteger const FATHER_LEVEL_REQUEST = 1;
NSInteger const HUSBAND_LEVEL_REQUEST = 2;
NSInteger const SON_LEVEL_REQUEST = 3;

@interface Handler ()

 //能处理的级别
@property (nonatomic, assign) NSInteger level;
//责任传递，下一个人责任人是谁
@property (nonatomic, strong) Handler *nextHandler;

@end


@implementation Handler

- (instancetype)initWithLevel:(NSInteger)level
{
    if (self = [super init]) {
        _level = level;
    }
    return self;
}

- (void)handleMessage:(id<IWomen>)women
{
    if ([women fetchType] == _level) {
        [self response:women];
    } else {
        if (_nextHandler != nil) {
            [_nextHandler handleMessage:women];
        } else {
            NSLog(@"Warning: No one can handle,be throwed");
        }
    }
}

- (void)setNext:(Handler *)handler
{
    _nextHandler = handler;
}

- (void)response:(id<IWomen>)women
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
