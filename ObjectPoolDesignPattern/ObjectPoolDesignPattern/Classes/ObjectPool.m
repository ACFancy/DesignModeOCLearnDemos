//
//  ObjectPool.m
//  ObjectPoolDesignPattern
//
//  Created by User on 2019/3/27.
//  Copyright © 2019 User. All rights reserved.
//

#import "ObjectPool.h"
#import "ObjectStatus.h"

@interface ObjectPool<__covariant T> ()

@property (nonatomic, strong) NSMutableDictionary<T, ObjectStatus *> *pool;

@end

@implementation ObjectPool

- (instancetype)init
{
    if (self = [super init]) {
        _pool = [NSMutableDictionary dictionary];
        _pool[[self create]] = [ObjectStatus new];
    }
    return self;
}

- (id)checkOut
{
    @synchronized (self) {
        for (id t in _pool.allKeys) {
            if ([_pool[t] validate]) {
                [_pool[t] setUsing];
                return t;
            }
        }
        return nil;
    }
}

- (void)checkIn:(id)t
{
    @synchronized (self) {
        [_pool[t] setFree];
    }
}

//创建池化对象
- (id)create
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
