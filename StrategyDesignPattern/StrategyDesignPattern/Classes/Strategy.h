//
//  Strategy.h
//  StrategyDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef Strategy_h
#define Strategy_h

@protocol Strategy <NSObject>

//策略模式的运算法则
- (void)dowSomething;

@end

#endif /* Strategy_h */
