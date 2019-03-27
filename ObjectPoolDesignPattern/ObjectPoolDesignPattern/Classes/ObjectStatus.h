//
//  ObjectStatus.h
//  ObjectPoolDesignPattern
//
//  Created by User on 2019/3/27.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ObjectStatus : NSObject

//占用
- (void)setUsing;

//释放
- (void)setFree;

//检查是否可用
- (BOOL)validate;

@end

NS_ASSUME_NONNULL_END
