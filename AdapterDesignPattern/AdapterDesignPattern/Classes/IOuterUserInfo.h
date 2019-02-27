//
//  IOuterUserInfo.h
//  AdapterDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IUserInfo.h"
#import "IOuterUserBaseInfo.h"
#import "IOuterUserHomeInfo.h"
#import "IOuterOfficeInfo.h"

NS_ASSUME_NONNULL_BEGIN

/*
 IOuterUserInfo变成了委托服务，把IUserInfo接口需要的所有的操作都委托给其他三个接口下的实现类，它的委托是通过对象层次的关联关系进行委托的，而不是继承关系
 好了，讲了这么多，我们需要给这种适配器起个名字，就是对象适配器，我们之前讲的通过继承进行的适配，叫做类适配器。
 */
@interface IOuterUserInfo : NSObject <IUserInfo>

- (instancetype)initWithOuterBaseInfo:(id<IOuterUserBaseInfo>)outerBaseInfo
                         outeHomeInfo:(id<IOuterUserHomeInfo>)outeHomeInfo
                      outerOfficeInfo:(id<IOuterOfficeInfo>)outerOfficeInfo;

@end

NS_ASSUME_NONNULL_END
