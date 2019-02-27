//
//  AContext.h
//  StrategyDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Strategy.h"

NS_ASSUME_NONNULL_BEGIN

//策略模式的重点就是封装角色，它是借用了代理模式的思路，大家可以想想，它和代理模式有什么差别，差别就是策略模式的封装角色和被封装的策略类不用是同一个接口，如果是同一个接口那就成为了代理模式
@interface AContext : NSObject

+ (instancetype)new NS_UNAVAILABLE;

//构造函数设置具体策略
- (instancetype)initWithStrategy:(id<Strategy>)strategy;

//封装后的策略方法
- (void)doAnything;

@end

NS_ASSUME_NONNULL_END
