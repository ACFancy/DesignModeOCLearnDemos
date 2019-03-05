//
//  Context.h
//  StateDesignPattern
//
//  Created by User on 2019/3/5.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConcreteState1.h"
#import "ConcreteState2.h"

NS_ASSUME_NONNULL_BEGIN

@class AState;
/*
 环境角色有两个不成文的约束：
 
 ● 把状态对象声明为静态常量，有几个状态对象就声明几个静态常量。
 
 ● 环境角色具有状态抽象角色定义的所有行为，具体执行使用委托方式。
 */
@interface Context : NSObject

@property (nonatomic, strong) AState *currentState;

+ (ConcreteState1 *)state1;

+ (ConcreteState2 *)state2;

- (void)handle1;

- (void)handle2;

@end

NS_ASSUME_NONNULL_END
