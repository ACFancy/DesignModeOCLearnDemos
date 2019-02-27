//
//  ConcreteStrategy1.h
//  StrategyDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Strategy.h"

NS_ASSUME_NONNULL_BEGIN

//具体策略也是非常普通的一个实现类，只要实现接口中的方法就可以
@interface ConcreteStrategy1 : NSObject <Strategy>

@end

NS_ASSUME_NONNULL_END
