//
//  FlyweightFactory.m
//  FlyWeightDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import "FlyweightFactory.h"
#import "ConcreteFlyweight1.h"

@implementation FlyweightFactory

//定义一个池容器
+ (NSMutableDictionary<NSString *, FlyWeight *> *)pool
{
    static NSMutableDictionary<NSString *, FlyWeight *> *pool;
    if (pool == nil) {
        pool = [NSMutableDictionary dictionary];
    }
    return pool;
}

//享元工厂
+ (FlyWeight *)fetchFlyweight:(NSString *)extrinsic
{
    FlyWeight *flyweight;
    if (extrinsic != nil && ![[self pool].allKeys containsObject:extrinsic]) {
        //池中没有该对象
        //根据外部状态创建享元对象
        flyweight = [ConcreteFlyweight1 new];
        //放置到池中
        [[self pool] setObject:flyweight forKey:extrinsic];
    } else if (extrinsic != nil) {
        flyweight =  [[self pool] objectForKey:extrinsic];
    }
    return flyweight;
}

@end
