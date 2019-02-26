//
//  ACommand.h
//  CommandDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class AReceiver;
//命令角色是命令模式的核心
//根据环境的需求，具体的命令类也可以有N个
@interface ACommand : NSObject

// //定义一个子类的全局共享变量 ,封装这个是推荐
@property (nonatomic, strong) AReceiver *cReceiver;

- (instancetype)initWithCReceiver:(AReceiver *)receiver;

 //每个命令类都必须有一个执行命令的方法
- (void)execute;

@end

NS_ASSUME_NONNULL_END
