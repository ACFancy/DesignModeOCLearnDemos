//
//  ADecorator.h
//  DecoratorDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AComponent.h"

NS_ASSUME_NONNULL_BEGIN

// 抽象装饰者 -> 装饰角色通常是一个抽象类
//若只有一个装饰类，则可以没有抽象装饰角色，直接实现具体的装饰角色即可
@interface ADecorator : AComponent

- (instancetype)initWithComponent:(AComponent *)component;

@end

NS_ASSUME_NONNULL_END
