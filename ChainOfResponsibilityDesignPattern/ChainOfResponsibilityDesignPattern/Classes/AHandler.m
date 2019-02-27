//
//  AHandler.m
//  ChainOfResponsibilityDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AHandler.h"
#import "ALevel.h"
#import "ARequest.h"
#import "AResponse.h"

@interface AHandler ()

@property (nonatomic, strong) AHandler *nextHandler;

@end

@implementation AHandler

- (AResponse *)handleMessage:(ARequest *)request
{
    AResponse *response = nil;
    if ([[self fetchHandlerLevel] isEqual:[request fetchRequestLevel]]) {
        //判断是否是自己的处理级别
        response = [self echo:request];
    } else  {
         //不属于自己的处理级别
        if (_nextHandler != nil) {
            response = [_nextHandler handleMessage:request];
        } else {
            //没有适当的处理者，业务自行处理
            NSLog(@"None to handle");
        }
    }
    return response;
}

- (void)setNext:(AHandler *)handler
{
    _nextHandler = handler;
}

- (ALevel *)fetchHandlerLevel
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

//每个处理者都必须实现处理任务
- (AResponse *)echo:(ARequest *)request
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
