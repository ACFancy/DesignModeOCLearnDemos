//
//  Facade.h
//  FacadeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//我们认为这3个类属于近邻，处理相关的业务，因此应该被认为是一个子系统的不同逻辑处理模块，对于此子系统的访问需要通过门面进行
//门面对象
@interface Facade : NSObject

//提供给外部访问的方法
- (void)methodA;

- (void)methodB;

- (void)methodC;

@end

NS_ASSUME_NONNULL_END
