//
//  IHandler.h
//  ChainOfResponsibilityDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef IHandler_h
#define IHandler_h
//从整个设计上分析，有处理权的人（如父亲、丈夫、儿子）才是设计的核心，他们是要处理这些请求的，我们来看有处理权的人员接口IHandler
@protocol IWomen;
@protocol IHandler <NSObject>

//一个女性（女儿、妻子或者母亲）要求逛街，你要处理这个请求
//有处理权的人对妇女的请求进行处理，分别有三个实现类
- (void)handleMessage:(id<IWomen>)women;

@end

#endif /* IHandler_h */
