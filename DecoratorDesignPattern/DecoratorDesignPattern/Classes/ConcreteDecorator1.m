//
//  ConcreteDecorate1.m
//  DecoratorDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ConcreteDecorator1.h"

@implementation ConcreteDecorator1

//定义被修饰者,继承的关系可省略
//- (instancetype)initWithComponent:(AComponent *)component
//{
//    self = [super initWithComponent:component];
//    return self;
//}

#pragma mark - Override
 //重写父类的Operation方法
- (void)operate
{
    [self method1];
    [super operate];
}

#pragma mark - Private Methods
//定义自己的修饰方法
- (void)method1
{
    NSLog(@"%s", __FUNCTION__);
}

@end
