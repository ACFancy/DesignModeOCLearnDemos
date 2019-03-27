//
//  IServiced.h
//  EmployeDesignPattern
//
//  Created by User on 2019/3/27.
//  Copyright © 2019 User. All rights reserved.
//

#ifndef IServiced_h
#define IServiced_h
//针对不同的服务对象具备不同的服务内容，也就是具体的功能实现IServiced接口即可
@protocol IServiced <NSObject>

////具有的特质或功能
- (void)serviced;

@end

#endif /* IServiced_h */
