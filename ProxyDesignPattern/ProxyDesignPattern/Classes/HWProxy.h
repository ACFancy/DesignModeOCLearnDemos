//
//  HWProxy.h
//  ProxyDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HWProxy : NSProxy

@property (nonatomic, strong, readonly) NSPointerArray *objects;

- (instancetype)initWithObjects:(id)obj, ...;

@end

NS_ASSUME_NONNULL_END
