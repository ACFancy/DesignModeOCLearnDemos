//
//  OuterUserInfo.h
//  AdapterDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "OuterUser.h"
#import "IUserInfo.h"

NS_ASSUME_NONNULL_BEGIN
/*
 OuterUserInfo可以看做是“两面派”，实现了IUserInfo接口，还继承了OuterUser，通过这样的设计，把OuterUser伪装成我们系统中一个IUserInfo对象，这样，我们的系统基本不用修改，所有的人员查询、调用跟本地一样。
 
 注意　我们之所以能够增加一个OuterUserInfo中转类，是因为我们在系统设计时严格遵守了依赖倒置原则和里氏替换原则，否则即使增加了中转类也无法解决问题。
 */
@interface OuterUserInfo : OuterUser <IUserInfo>


@end

NS_ASSUME_NONNULL_END
