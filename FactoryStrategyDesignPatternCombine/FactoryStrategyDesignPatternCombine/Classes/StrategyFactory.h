//
//  StrategyFactory.h
//  FactoryStrategyDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IDeduction.h"

NS_ASSUME_NONNULL_BEGIN

@class StrategyMan;
//工厂方法，包装对应策略的初始化， 引入StrategyMan进行配置，避免系统僵化的情况发生
@interface StrategyFactory : NSObject

+ (id<IDeduction>)fetchDeduction:(StrategyMan *)strategy;

@end

NS_ASSUME_NONNULL_END
