//
//  ConcreteColleague1.h
//  MediatorDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AColleague.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConcreteColleague1 : AColleague

 //自有方法 self-method
- (void)selfMethod1;

 //依赖方法 dep-method
- (void)depMethod1;

@end

NS_ASSUME_NONNULL_END
