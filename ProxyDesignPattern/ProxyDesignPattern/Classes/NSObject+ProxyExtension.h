//
//  NSObject+ProxyExtension.h
//  ProxyDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (ProxyExtension)

- (void)pe_PerformSelector:(SEL)aSelector
                  onThread:(NSThread *)aThread
             waitUntilDonw:(BOOL)wait
               withObjects:(id)arg, ...;

- (nullable id)pe_PerformSelector:(SEL)aSelector
                      withObjects:(id)arg, ...;

- (nullable id)pe_PerformSelector:(SEL)aSelector
                      withArguments:(va_list)args;

- (nullable NSInvocation *)pe_InvocationForSelector:(SEL)aSelector
                                        withObjects:(NSArray *)args;

@end

NS_ASSUME_NONNULL_END
