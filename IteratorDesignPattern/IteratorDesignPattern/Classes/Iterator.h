//
//  Iterator.h
//  IteratorDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef Iterator_h
#define Iterator_h

@protocol Iterator <NSObject>

//遍历到下一个元素
- (NSObject *)next;

//是否已经遍历到尾部
- (BOOL)hasNext;

//删除当前指向的元素
- (BOOL)remove;

@end

#endif /* Iterator_h */
