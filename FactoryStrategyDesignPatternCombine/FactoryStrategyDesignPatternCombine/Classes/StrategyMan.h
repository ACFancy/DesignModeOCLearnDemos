//
//  StrategyMan.h
//  FactoryStrategyDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//Config Enum(OC Enum没有这个功能，所以使用类方法实现)，解决：策略模式的缺陷：它把所有的策略类都暴露出去，暴露得越多以后的修改风险也就越大，增加一个映射配置文件，实现策略类的隐藏。我们使用枚举担当此任，对策略类进行映射处理，避免高层模块直接访问策略类，同时由工厂方法模式根据映射产生策略对象
//它就是一个登记容器，所有的具体策略都在这里登记，然后提供给工厂方法模式
@interface StrategyMan : NSObject

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithValue:(NSString *)value;

+ (instancetype)steadyDeduction;

+ (instancetype)freeDeduction;

- (NSString *)fetchValue;

@end

NS_ASSUME_NONNULL_END
