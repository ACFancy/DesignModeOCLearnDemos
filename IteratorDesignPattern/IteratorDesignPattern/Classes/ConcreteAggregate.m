//
//  ConcreteAggregate.m
//  IteratorDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ConcreteAggregate.h"
#import "ConcreteIterator.h"

@interface ConcreteAggregate ()

//容纳对象的容器
@property (nonatomic, strong) NSMutableArray *vector;

@end

@implementation ConcreteAggregate

- (instancetype)init
{
    if (self = [super init]) {
        _vector = [NSMutableArray array];
    }
    return self;
}

- (void)add:(NSObject *)obj
{
    if (obj) {
        [_vector addObject:obj];
    }
}

- (void)remove:(NSObject *)obj
{
    if (obj && [_vector containsObject:obj]) {
        [_vector removeObject:obj];
    }
}

- (id<Iterator>)iterator
{
    return [[ConcreteIterator alloc] initWithVector:_vector];
}

@end
