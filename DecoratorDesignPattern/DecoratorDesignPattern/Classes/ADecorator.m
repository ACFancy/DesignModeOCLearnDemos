//
//  ADecorator.m
//  DecoratorDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ADecorator.h"

@interface ADecorator ()

@property (nonatomic, strong) AComponent *component;

@end

@implementation ADecorator

 //通过构造函数传递被修饰者
- (instancetype)initWithComponent:(AComponent *)component
{
    if (self = [super init]) {
        _component = component;
    }
    return self;
}

#pragma mark - Override
//委托给被修饰者执行
- (void)operate
{
    [_component operate];
}

@end
