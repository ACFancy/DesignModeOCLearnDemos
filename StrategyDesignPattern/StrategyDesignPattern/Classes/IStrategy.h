//
//  IStrategy.h
//  StrategyDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef IStrategy_h
#define IStrategy_h

/*
 三个妙计都有了，那还缺少两个配角：
    第一，妙计肯定要放到一个地方吧，这么重要的东西要保管呀，也就是承装妙计的锦囊，所以俗称锦囊妙计嘛；
    第二，这些妙计都要有一个执行人吧，是谁？当然是赵云了，妙计是小亮给的，执行者是赵云。赵云就是一个干活的人，从锦囊中取出妙计，执行，然后获胜。
 */

@protocol IStrategy <NSObject>

//每个锦囊妙计都是一个可执行的算法
- (void)operate;

@end

#endif /* IStrategy_h */
