//
//  ConcreteFlyweight1.h
//  FlyWeightDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import "FlyWeight.h"

NS_ASSUME_NONNULL_BEGIN
/*
 这很简单，实现自己的业务逻辑，然后接收外部状态，以便内部业务逻辑对外部状态的依赖。注意，我们在抽象享元中对外部状态加上了final关键字，防止意外产生，什么意外？获得了一个外部状态，然后无意修改了一下，池就混乱了！
 
 注意　在程序开发中，确认只需要一次赋值的属性则设置为final类型，避免无意修改导致逻辑混乱，特别是Session级的常量或变量。
 */

//具体享元角色
@interface ConcreteFlyweight1 : FlyWeight

@end

NS_ASSUME_NONNULL_END
