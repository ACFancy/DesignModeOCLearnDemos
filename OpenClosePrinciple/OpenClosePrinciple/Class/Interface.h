//
//  Interface.h
//  OpenClosePrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//
///通过接口或抽象类可以约束一组可能变化的行为，并且能够实现对扩展开放，其包含三层含义：第一，通过接口或抽象类约束扩展，对扩展进行边界限定，不允许出现在接口或抽象类中不存在的public方法；第二，参数类型、引用对象尽量使用接口或者抽象类，而不是实现类；第三，抽象层尽量保持稳定，一旦确定即不允许修改

#ifndef Interface_h
#define Interface_h

@protocol IBook <NSObject>

- (NSString *)getName;

- (NSInteger)getPrice;

- (NSString *)getAuthor;

@end

@protocol IComputerBook <IBook>

- (NSString *)getScope;

@end

#endif /* Interface_h */
