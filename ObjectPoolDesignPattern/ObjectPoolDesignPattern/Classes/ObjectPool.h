//
//  ObjectPool.h
//  ObjectPoolDesignPattern
//
//  Created by User on 2019/3/27.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ObjectPool<__covariant T> : NSObject

//创建池化对象
- (T)create;

//从Dictionary中取出空闲元素
- (T)checkOut;

//归还对象
- (void)checkIn:(T)t;

@end

NS_ASSUME_NONNULL_END
