//
//  GamePlayerProxy.h
//  ProxyDesignPattern
//
//  Created by User on 2019/2/22.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Interface.h"

NS_ASSUME_NONNULL_BEGIN

@interface GamePlayerProxy : NSObject<IGamePlayer, IProxy>

- (instancetype)initWithGamePlayer:(id<IGamePlayer>)gamePlayer;

- (instancetype)initWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
