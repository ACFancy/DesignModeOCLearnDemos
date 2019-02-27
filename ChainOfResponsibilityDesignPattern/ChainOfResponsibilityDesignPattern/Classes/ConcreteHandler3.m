//
//  ConcreteHandler3.m
//  ChainOfResponsibilityDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ConcreteHandler3.h"

@implementation ConcreteHandler3

//定义自己的处理逻辑
- (AResponse *)echo:(ARequest *)request
{
    //完成处理逻辑
    NSLog(@"%s", __FUNCTION__);
    return nil;
}

//设置自己的处理级别
- (ALevel *)fetchHandlerLevel
{
    return nil;
}

@end
