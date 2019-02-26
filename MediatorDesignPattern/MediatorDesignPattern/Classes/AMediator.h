//
//  AMediator.h
//  MediatorDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class ConcreteColleague1, ConcreteColleague2;

@interface AMediator : NSObject

//通过getter/setter方法把同事类注入进来
@property (nonatomic, strong) ConcreteColleague1 *c1;
@property (nonatomic, strong) ConcreteColleague2 *c2;

//中介者模式的业务逻辑
- (void)doSomething1;

- (void)doSomething2;

@end

NS_ASSUME_NONNULL_END
