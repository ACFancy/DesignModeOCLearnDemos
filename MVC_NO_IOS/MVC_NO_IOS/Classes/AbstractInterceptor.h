//
//  AbstractInterceptor.h
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

/*
 然后我们再来看拦截器，拦截器和过滤器的区别就是：拦截器可以脱离容器（J2EE容器）运行，而过滤器不行。拦截器的目的是对数据和行为进行过滤，符合条件的才可以执行Action，或者是在Action执行完毕后，调用拦截器进行回收处理
 */

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//抽象拦截器
//模板方法模式，开发者继承AbstractInterceptor后，只要完成两个职责即可：定义拦截类型（setType）和实现拦截器要拦截的方法（intercept
@interface AbstractInterceptor : NSObject

- (void)exec;

- (void)setType:(NSInteger)type;

@end

NS_ASSUME_NONNULL_END
