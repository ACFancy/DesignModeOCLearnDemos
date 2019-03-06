//
//  SignInfoFactory.h
//  FlyWeightDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class SignInfo, ExtrinsicState;
//工厂类就这么简单？非也，这是我们的教学代码，真实的ObjectFactory要复杂得多，主要是注入了部分Handler的管理
//带对象池的工厂类
@interface SignInfoFactory : NSObject

/*
 方法都很简单，不多解释。读者需要注意一点的是@Deprecated注解，不要有删除投产中代码的念头，如果方法或类确实不再使用了，增加该注解，表示该方法或类已经过时，尽量不要再使用了，我们应该保持历史原貌，同时也有助于版本向下兼容，特别是在产品级研发中。
 */
+ (SignInfo *)fetchSignInfo DEPRECATED_MSG_ATTRIBUTE("废弃使用");

+ (NSMutableDictionary<NSString *, SignInfo *> *)pool;

+ (SignInfo *)fetchSignInfo:(NSString *)key;

+ (SignInfo *)fetchSignInfoWithState:(ExtrinsicState *)key;

@end

NS_ASSUME_NONNULL_END
