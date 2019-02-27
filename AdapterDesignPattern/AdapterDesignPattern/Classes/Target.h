//
//  Target.h
//  AdapterDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef Target_h
#define Target_h

//目标角色
//目标角色是一个接口或者是抽象类，一般不会是实现类。
@protocol Target <NSObject>

//目标角色有自己的方法
- (void)request;

@end

#endif /* Target_h */
