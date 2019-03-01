//
//  BeanUtils.h
//  MementoDesignPattern
//
//  Created by User on 2019/3/1.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BeanUtils : NSObject

+ (NSMutableDictionary *)backupProp:(NSObject *)obj;

+ (void)restoreProp:(NSObject *)obj propMap:(NSMutableDictionary *)propMap;

@end

NS_ASSUME_NONNULL_END
