//
//  ViewManager.m
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import "ViewManager.h"
#import "ValueStackHelper.h"
#import "GBLangData.h"
#import "JspView.h"

//通过桥梁模式我们把不同的语言和不同类型的视图结合起来，共同提供一个多语言的应用系统，即使以后增加语言也非常容易扩展
@interface ViewManager ()

@property (nonatomic, strong) NSString *actionName;
@property (nonatomic, strong) ValueStack *valueStack;

@end

@implementation ViewManager

- (instancetype)initWithActionName:(NSString *)actionName
{
    if (self = [super init]) {
        _actionName = actionName;
        _valueStack = [ValueStackHelper getValueStack];
    }
    return self;
}

- (NSString *)getViewPath:(NSString *)result
{
    //根据值栈查找到需要提供的语言
    AbsLangData *langData = [GBLangData new];
    //根据action和result查找到指定的视图，并加载语言
    AbsView *view = [[JspView alloc] initWithLangData:langData];
    return [view getURI];
}

@end
