//
//  Aggregate.h
//  IteratorDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef Aggregate_h
#define Aggregate_h

//抽象容器
@protocol Iterator;
@protocol Aggregate <NSObject>

//是容器必然有元素的增加
- (void)add:(NSObject *)obj;

//减少元素
- (void)remove:(NSObject *)obj;

//由迭代器来遍历所有的元素
- (id<Iterator>)iterator;

@end

#endif /* Aggregate_h */
