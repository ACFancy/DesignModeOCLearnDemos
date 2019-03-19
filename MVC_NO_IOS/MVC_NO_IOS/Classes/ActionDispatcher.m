//
//  ActionDispatcher.m
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import "ActionDispatcher.h"
#import "ActionManager.h"
#import "InterceptorFactory.h"

@interface ActionDispatcher ()

@property (nonatomic, strong) ActionManager *actionManager;
@property (nonatomic, strong) NSArray *listInterceptors;

@end

@implementation ActionDispatcher

- (instancetype)init
{
    if (self = [super init]) {
        _actionManager = [ActionManager new];
        _listInterceptors = [InterceptorFactory createInterceptors];
    }
    return self;
}


- (NSString *)actionInvoke:(NSString *)actionName
{
    //前置拦截器
    return [_actionManager execAction:actionName];
    //后置拦截器
}

@end
