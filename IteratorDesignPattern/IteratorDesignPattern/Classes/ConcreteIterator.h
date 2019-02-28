//
//  ConcreteIterator.h
//  IteratorDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"

NS_ASSUME_NONNULL_BEGIN

//具体迭代器
@interface ConcreteIterator : NSObject <Iterator>

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithVector:(NSMutableArray *)vector;

@end

NS_ASSUME_NONNULL_END
