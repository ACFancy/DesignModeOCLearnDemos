//
//  Subject.h
//  ProxyDesignPattern
//
//  Created by User on 2019/2/22.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef Subject_h
#define Subject_h

//抽象主题类
@protocol Subject <NSObject>

//在接口中我们定义了一个方法request来作为方法的代表，RealSubject对它进行实现
- (void)request;

//其中的doSomething是一种标识方法，可以有多个逻辑处理方法
- (void)doSomething:(NSString *)str;

@end

#endif /* Subject_h */
