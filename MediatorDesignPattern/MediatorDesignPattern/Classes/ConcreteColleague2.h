//
//  ConcreteColleague2.h
//  MediatorDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AColleague.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConcreteColleague2 : AColleague

//自有方法 self-method
- (void)selfMethod2;

//依赖方法 dep-method
- (void)depMethod2;

@end

NS_ASSUME_NONNULL_END
