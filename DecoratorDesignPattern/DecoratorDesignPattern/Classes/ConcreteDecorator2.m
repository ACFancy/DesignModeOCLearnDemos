//
//  ConcreteDecorator2.m
//  DecoratorDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ConcreteDecorator2.h"

@implementation ConcreteDecorator2

//定义被修饰者，继承的关系可省略
//- (instancetype)initWithComponent:(AComponent *)component
//{
//    self = [super initWithComponent:component];
//    return self;
//}

#pragma mark - Override
//重写父类的Operation方法
- (void)operate
{
    [super operate];
    [self method2];
}

#pragma mark - Private Methods
//定义自己的修饰方法
- (void)method2
{
    NSLog(@"%s", __FUNCTION__);
}

@end
