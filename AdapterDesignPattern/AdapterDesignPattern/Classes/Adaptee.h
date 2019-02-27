//
//  Adaptee.h
//  AdapterDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//源角色
@interface Adaptee : NSObject

//原有的业务逻辑
- (void)doSomething;

@end

NS_ASSUME_NONNULL_END
