//
//  EventDispatch.h
//  ObserverMediatorDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"

NS_ASSUME_NONNULL_BEGIN

@class EventCustomer;
//Observer，观察者， 事件分发中介者
//事件分发者担当了这么多的职责，那是不是与单一职责原则相违背了？确实如此，我们在整个系统的设计中确实需要这样一个角色担任这么多的功能，如果强制细分也可以完成，但是会加大代码量，同时导致系统的结构复杂，读者可以考虑拆分这3个职责，然后再组合相关的功能，看看代码量是如何翻倍的
@interface EventDispatch : NSObject <Observer>

+ new NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

+ (instancetype)fetchEventDispatch;

- (void)registerCustomer:(EventCustomer *)customer;

@end

NS_ASSUME_NONNULL_END
