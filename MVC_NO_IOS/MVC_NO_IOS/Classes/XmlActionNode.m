//
//  XmlActionNode.m
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import "XmlActionNode.h"
#import "Element.h"
#import "Attribute.h"
#import "ViewPathVisitor.h"

//适配器对象，Adaptee: Element    Target:ActionNode  Adapter:XmlActionNode
@interface XmlActionNode ()

@property (nonatomic, strong) Element *el;

@end

@implementation XmlActionNode

- (instancetype)initWithElement:(Element *)el
{
    if (self = [super init]) {
        _el = el;
    }
    return self;
}

#pragma mark - Override
- (NSString *)actionName
{
    return [self getAttValue:@"name"];
}

- (NSString *)actionClass
{
    return [self getAttValue:@"class"];
}

- (NSString *)methodName
{
    return [self getAttValue:@"method"];
}

//一个访问者模式
- (NSString *)getView:(NSString *)result
{
    ViewPathVisitor *visitor = [[ViewPathVisitor alloc] initWithResult:result];
    [_el accept:visitor];
    return [visitor viewPath];
}


#pragma mark - Private Methods
- (NSString *)getAttValue:(NSString *)attName
{
    Attribute *att = [_el attribute:attName];
    return [att getText];
}

@end
