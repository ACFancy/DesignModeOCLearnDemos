//
//  ClassUtils.h
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ClassUtils : NSObject

///寻找该父类下的所有（一级）子类。比较耗时间。避免主线程中使用或在异步线程中使用
+ (NSArray *)fetchSonClass:(Class)fatherClass;

@end

NS_ASSUME_NONNULL_END
