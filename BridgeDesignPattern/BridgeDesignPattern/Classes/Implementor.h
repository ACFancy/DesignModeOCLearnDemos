//
//  Implementor.h
//  BridgeDesignPattern
//
//  Created by User on 2019/3/7.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef Implementor_h
#define Implementor_h

//实现化角色
@protocol Implementor <NSObject>

- (void)doSomething;

- (void)doAnything;

@end

#endif /* Implementor_h */
