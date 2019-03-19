//
//  FilterDispatcher.m
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import "FilterDispatcher.h"
#import "ValueStackHelper.h"
#import "ActionDispatcher.h"
#import "HttpServletRequest.h"
#import "HttpServletResponse.h"
#import "FilterChain.h"
#import "ViewManager.h"
#import "RequestDispatcher.h"
#import "FilterConfig.h"

@interface FilterDispatcher ()

@property (nonatomic, strong) ValueStackHelper *valueStackHelper;
@property (nonatomic, strong) id<IActionDispatcher> actionDispatcher;

@end

@implementation FilterDispatcher

- (instancetype)init
{
    if (self = [super init]) {
        _valueStackHelper = [ValueStackHelper new];
        _actionDispatcher = [ActionDispatcher new];
    }
    return self;
}

- (void)doFilter:(ServletRequest *)request
         reponse:(ServletResponse *)response
           chain:(FilterChain *)chain
{
    //转换为HttpServletRequest
    HttpServletRequest *req = (HttpServletRequest *)request;
    HttpServletResponse *res = (HttpServletResponse *)response;
    
    //传递到其他过滤器处理
    [chain doFilter:req response:res];
    //获得从HTTP请求的ACTION名称
    NSString *actionName = [self getActionNameFromURI:req];
    //对ViewManager的应用
    ViewManager *viewManager = [[ViewManager alloc] initWithActionName:actionName];
    //所有参数放入值栈
    ValueStack *valueStack = [_valueStackHelper putIntoStack:request];
    //把所有的请求传递给ActionDispatcher处理
    NSString *result = [_actionDispatcher actionInvoke:actionName];
    NSString *viewPath = [viewManager getViewPath:result];
    //直接转向
    RequestDispatcher *rd = [req getRequestDispatcher:viewPath];
    [rd forward:req response:res];
}

/*
 ● 检查XML配置文件
 所有的Action与视图的对应关系是在配置文件中配置的，因此若配置文件出错，该应用应该停止响应，这就需要在启动时对XML文件进行完整性检查和语法分析。
 ● 启动监视器
 配置文件随时都可以修改，但是它修改后不应该需要重新启动应用才能生效，否则对系统的正常运行有非常大的影响，因此这里要使用到Listener（监听）行为了
 */
- (void)config:(FilterConfig *)config
{
    /*
     * 1、检查XML配置文件是否正确
     * 2、启动监控程序，观察配置文件是否正确
     */
}

#pragma mark - Private Methods
- (NSString *)getActionNameFromURI:(HttpServletRequest *)req
{
    NSString *path = [req getRequestURI];
    NSInteger indexStart = MIN(MIN([path rangeOfString:@"/"].location, path.length) + 1, path.length);
    NSInteger indexEnd = MIN([path rangeOfString:@"."].location, path.length);
    NSInteger len = MIN(0, indexEnd - indexStart);
    if (len <= 0) {
        return nil;
    }
    
    NSString *actionName = [path substringWithRange:NSMakeRange(indexStart, len)];
    return actionName;
}

@end
