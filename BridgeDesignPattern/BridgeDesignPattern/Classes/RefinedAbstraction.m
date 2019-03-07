//
//  RefinedAbstraction.m
//  BridgeDesignPattern
//
//  Created by User on 2019/3/7.
//  Copyright © 2019年 User. All rights reserved.
//

#import "RefinedAbstraction.h"
#import "Implementor.h"

@implementation RefinedAbstraction
//想想看，如果我们的实现化角色有很多的子接口，然后是一堆的子实现。如果在构造函数中不传递一个尽量明确的实现者，代码就很不清晰。
#pragma mark - Override
- (void)request
{
    /*业务处理*/
    //业务
    [super request];
    [[self fetchImp] doAnything];
}

@end
