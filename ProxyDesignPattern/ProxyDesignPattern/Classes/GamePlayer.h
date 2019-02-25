//
//  GamePlayer.h
//  ProxyDesignPattern
//
//  Created by User on 2019/2/22.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Interface.h"

NS_ASSUME_NONNULL_BEGIN

@interface GamePlayer : NSObject<IGamePlayer>

- (instancetype)initWithName:(NSString *)name;

- (instancetype)initWithGamePlayer:(id<IGamePlayer>)gamePlayer name:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
