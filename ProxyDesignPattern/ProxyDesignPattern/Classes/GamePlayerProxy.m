//
//  GamePlayerProxy.m
//  ProxyDesignPattern
//
//  Created by User on 2019/2/22.
//  Copyright © 2019年 User. All rights reserved.
//

#import "GamePlayerProxy.h"
#import "GamePlayer.h"

@interface GamePlayerProxy ()

@property (nonatomic, strong) id<IGamePlayer> player;
@property (nonatomic, weak) id<IGamePlayer> weakPlayer;

@end

@implementation GamePlayerProxy

- (instancetype)initWithGamePlayer:(id<IGamePlayer>)gamePlayer
{
    if (self = [super init]) {
        _player = gamePlayer;
    }
    return self;
}

- (instancetype)initWithWeakGamePlayer:(id<IGamePlayer>)weakGamePlayer
{
    if (self = [super init]) {
        _weakPlayer = weakGamePlayer;
    }
    return self;
}

//普通代理
//运行结果完全相同。在该模式下，调用者只知代理而不用知道真实的角色是谁，屏蔽了真实角色的变更对高层模块的影响，真实的主题角色想怎么修改就怎么修改，对高层次的模块没有任何的影响，只要你实现了接口所对应的方法，该模式非常适合对扩展性要求较高的场合。
//注意　普通代理模式的约束问题，尽量通过团队内的编程规范类约束，因为每一个主题类是可被重用的和可维护的，使用技术约束的方式对系统维护是一种非常不利的因素
- (instancetype)initWithName:(NSString *)name
{
    if (self = [super init]) {
        @try {
            _player = [[GamePlayer alloc] initWithGamePlayer:self name:@"xxx"];
        } @catch (NSException *exception) {
            @throw exception;
        }
    }
    return self;
}

//强制代理在设计模式中比较另类，为什么这么说呢？一般的思维都是通过代理找到真实的角色，但是强制代理却是要“强制”，你必须通过真实角色查找到代理角色，否则你不能访问
//甭管你是通过代理类还是通过直接new一个主题角色类，都不能访问，只有通过真实角色指定的代理类才可以访问，也就是说由真实角色管理代理角色。
//这么说吧，高层模块new了一个真实角色的对象，返回的却是代理角色

- (void)loginWithUser:(NSString *)user password:(NSString *)password
{
    if (_weakPlayer) {
        [_weakPlayer loginWithUser:user password:password];
    } else {
        [_player loginWithUser:user password:password];
    }
    
}

- (void)killBoss
{
    if (_weakPlayer) {
        [_weakPlayer killBoss];
    } else {
        [_player killBoss];
    }
    
}

- (void)upgrade
{
    if (_weakPlayer) {
        [_weakPlayer upgrade];
    } else {
        [_player upgrade];
    }
    [self count];
}

//代理角色也可以再次被代理，这里我们就没有继续延伸下去了，查找代理的方法就返回自己的实例。
- (id<IGamePlayer>)fetchProxy
{
    return self;
}

/*
 代理类不仅仅是可以有自己的运算方法，通常的情况下代理的职责并不一定单一，它可以组合其他的真实角色，也可以实现自己的职责，比如计算费用。代理类可以为真实角色预处理消息、过滤消息、消息转发、事后处理消息等功能。当然一个代理类，可以代理多个真实角色，并且真实角色之间可以有耦合关系，读者可以自行扩展一下。
 */
- (void)count
{
    NSLog(@"%s-%@", __FUNCTION__, @"升级费用150元");
}

@end
