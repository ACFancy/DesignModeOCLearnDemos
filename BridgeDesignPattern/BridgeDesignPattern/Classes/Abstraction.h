//
//  Abstraction.h
//  BridgeDesignPattern
//
//  Created by User on 2019/3/7.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Implementor;
//抽象化角色
@interface Abstraction : NSObject

- (instancetype)initWithImp:(id<Implementor>)imp;

- (void)request;

- (id<Implementor>)fetchImp;

@end

NS_ASSUME_NONNULL_END
