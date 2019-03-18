//
//  DeductionFacade.h
//  FactoryStrategyDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//门面模式，不让上层的业务模块深入到模块内部
//根据策略管理类的枚举项创建一个策略对象，简单而实用，策略模式的缺陷也弥补成功。那这么复杂的系统怎么让高层模块访问？（你看不出复杂？那是因为我们写的都是快乐路径，太多情况都没有考虑，在实际项目中仅就并发处理和事务管理这两部分就够你头疼了。）既然系统很复杂，是不是需要封装一下
@class Card, Trade;
@interface DeductionFacade : NSObject

+ (Card *)deduct:(Card *)card trade:(Trade *)trade;

@end

NS_ASSUME_NONNULL_END
