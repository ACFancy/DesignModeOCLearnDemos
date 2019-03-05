//
//  AState.h
//  StateDesignPattern
//
//  Created by User on 2019/3/5.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Context;

//抽象环境角色
//抽象环境中声明一个环境角色，提供各个状态类自行访问，并且提供所有状态的抽象行为，由各个实现类实现
@interface AState : NSObject

@property (nonatomic, weak) Context *context;

- (void)handle1;

- (void)handle2;

@end

NS_ASSUME_NONNULL_END
