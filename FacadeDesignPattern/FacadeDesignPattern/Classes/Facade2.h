//
//  Facade2.h
//  FacadeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//增加的门面非常简单，委托给了已经存在的门面对象Facade进行处理，为什么要使用委托而不再编写一个委托到子系统的方法呢？那是因为在面向对象的编程中，尽量保持相同的代码只编写一遍，避免以后到处修改相似代码的悲剧。
@interface Facade2 : NSObject

- (void)methodB;

@end

NS_ASSUME_NONNULL_END
