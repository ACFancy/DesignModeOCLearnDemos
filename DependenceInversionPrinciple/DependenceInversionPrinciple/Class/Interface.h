//
//  Interface.h
//  DependenceInversionPrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#ifndef Interface_h
#define Interface_h

@protocol ICar <NSObject>

- (void)run;

@end

@protocol IDriver <NSObject>

//接口注入: 在接口的方法中声明依赖对象
- (void)drive:(id<ICar>)car;

@optional
- (void)drive;

- (void)setCar:(id<ICar>)car;

@end

#endif /* Interface_h */
