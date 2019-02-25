//
//  GamePlayer.m
//  ProxyDesignPattern
//
//  Created by User on 2019/2/22.
//  Copyright © 2019年 User. All rights reserved.
//

#import "GamePlayer.h"
#import "GamePlayerProxy.h"

@interface GamePlayer ()

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) id<IGamePlayer> proxy;

@end

@implementation GamePlayer

- (instancetype)init
{
    if (self = [super init]) {
        _name = @"";
    }
    return self;
}

- (instancetype)initWithName:(NSString *)name
{
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

- (instancetype)initWithGamePlayer:(id<IGamePlayer>)gamePlayer name:(NSString *)name
{
    if (gamePlayer == nil) {
        @throw [NSException exceptionWithName:@"CreateGamePlayerDomain" reason:@"Can't delevier nil gamePlayer proxy param" userInfo:nil];
    } else if (self = [super init]) {
        _name = name;
    }
    return self;
}

- (void)loginWithUser:(NSString *)user password:(NSString *)password
{
//    NSLog(@"%@-%@-%s", user, _name, __FUNCTION__);
    if ([self isProxy]) {
        NSLog(@"%@-%@-%s", user, _name, __FUNCTION__);
    } else {
        NSLog(@"请使用指定的代理访问");
    }
}

- (void)killBoss
{
//    NSLog(@"%@-%s", _name, __FUNCTION__);
    if ([self isProxy]) {
        NSLog(@"%@-%s", _name, __FUNCTION__);
    } else {
        NSLog(@"请使用指定的代理访问");
    }
}

- (void)upgrade
{
//    NSLog(@"%@-%s", _name, __FUNCTION__);
    if ([self isProxy]) {
        NSLog(@"%@-%s", _name, __FUNCTION__);
    } else {
        NSLog(@"请使用指定的代理访问");
    }
}

- (id<IGamePlayer>)fetchProxy
{
    if (_proxy == nil) {
        _proxy = [[GamePlayerProxy alloc] initWithGamePlayer:self];
    }
    return _proxy;
}

#pragma mark - Private Methods
//增加了一个私有方法，检查是否是自己指定的代理，是指定的代理则允许访问，否则不允许访问。
- (BOOL)isProxy
{
    return (_proxy != nil);
}

@end
