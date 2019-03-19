//
//  LogicXmlValidate.m
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

/*
 逻辑校验相对比较复杂，它的逻辑流程如下：
 
 ● 读取XML文件。
 ● 使用反射技术初始化一个对象（配置文件中的class属性值）。
 ● 检查是否存在配置文件中配置的方法。
 ● 检查方法的返回值是否是String，并且无输入参数，同时必须继承指定类或接口。
 逻辑校验需要把所有的对象都初始化一遍，在Action类较多的情况下，效率较低，但它可以提前发现出现访问异常的情况，把问题解决在萌芽状态
 */

#import "LogicXmlValidate.h"

@implementation LogicXmlValidate

//检查xmlPath是否符合逻辑，比如不会出现一个类中没有的方法
- (BOOL)validate:(NSString *)xmlPath
{
    return NO;
}

@end
