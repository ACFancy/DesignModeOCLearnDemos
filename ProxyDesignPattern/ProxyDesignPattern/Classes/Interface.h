//
//  Interface.h
//  ProxyDesignPattern
//
//  Created by User on 2019/2/22.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef Interface_h
#define Interface_h

@protocol IGamePlayer <NSObject>

//登录游戏
- (void)loginWithUser:(NSString *)user password:(NSString *)password;

//杀怪，网络游戏的主要特色
- (void)killBoss;

//升级
- (void)upgrade;

//强制代理
//每个人都可以找一下自己的代理
- (id<IGamePlayer>)fetchProxy;

@end

//增加了一个IProxy接口，其作用是计算代理的费用
@protocol IProxy <NSObject>

- (void)count;

@end

//动态代理
@protocol InvocationHandler <NSObject>


@end

#endif /* Interface_h */
