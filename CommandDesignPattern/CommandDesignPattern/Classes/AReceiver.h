//
//  AReceiver.h
//  CommandDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//通用Receiver类
//为什么Receiver是一个抽象类？那是因为接收者可以有多个，有多个就需要定义一个所有特性的抽象集合——抽象的接收者，接收者可以是N个，这要依赖业务的具体定义
@interface AReceiver : NSObject

//抽象接收者，定义每个接收者都必须完成的业务
- (void)doSomething;

@end

NS_ASSUME_NONNULL_END
