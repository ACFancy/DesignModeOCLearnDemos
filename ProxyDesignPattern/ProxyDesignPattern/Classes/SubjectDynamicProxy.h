//
//  SubjectDynamicProxy.h
//  ProxyDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "DynamicProxy.h"

NS_ASSUME_NONNULL_BEGIN

///具体业务的动态代理
@interface SubjectDynamicProxy : DynamicProxy

+ (instancetype)proxyWithObject:(NSObject *)object;

@end

NS_ASSUME_NONNULL_END
