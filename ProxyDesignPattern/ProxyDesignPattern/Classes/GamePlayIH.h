//
//  GamePlayIH.h
//  ProxyDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Interface.h"

NS_ASSUME_NONNULL_BEGIN

@interface GamePlayIH : NSObject <InvocationHandler>

- (instancetype)initWithObject:(NSObject *)object;

@end

NS_ASSUME_NONNULL_END
