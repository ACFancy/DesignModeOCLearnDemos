//
//  DeductionContext.h
//  FactoryStrategyDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IDeduction.h"

NS_ASSUME_NONNULL_BEGIN

//扣款策略的封装 Strategy Context， 这两个具体的策略与我们的交易类型没有任何关系，也不应该有关系，策略模式就是提供两个可以相互替换的策略，至于在什么时候使用什么策略，则不是由策略模式来决定的。策略模式还有一个角色没出场，即封装角色
@interface DeductionContext : NSObject

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithDeduction:(id<IDeduction>)deduction;

- (BOOL)exec:(Card *)card trade:(Trade *)trade;

@end

NS_ASSUME_NONNULL_END
