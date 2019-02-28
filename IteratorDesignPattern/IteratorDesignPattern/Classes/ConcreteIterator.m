//
//  ConcreteIterator.m
//  IteratorDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ConcreteIterator.h"

@interface ConcreteIterator ()

@property (nonatomic, strong) NSMutableArray *vector;
@property (nonatomic, assign) NSInteger cursor;

@end

@implementation ConcreteIterator

- (instancetype)initWithVector:(NSMutableArray *)vector
{
    if (self = [super init]) {
        _vector = vector;
        _cursor = 0;
    }
    return self;
}

- (BOOL)hasNext
{
    return (_cursor < _vector.count);
}

- (NSObject *)next
{
    if ([self hasNext]) {
        return _vector[_cursor++];
    }
    return nil;
}

//注意　开发系统时，迭代器的删除方法应该完成两个逻辑：一是删除当前元素，二是当前游标指向下一个元素。
- (BOOL)remove
{
    if ([self hasNext]) {
        [_vector removeObjectAtIndex:_cursor];
        return YES;
    }
    return NO;
}

@end
