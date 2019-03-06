//
//  SignInfoFactory.m
//  FlyWeightDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import "SignInfoFactory.h"
#import "SignInfo.h"

#import "SignInfo4Pool.h"
#import "ExtrinsicState.h"

@implementation SignInfoFactory

+ (NSMutableDictionary<NSString *, SignInfo *> *)pool
{
    static NSMutableDictionary<NSString *, SignInfo *> *pool;
    if (pool == nil) {
        pool = [NSMutableDictionary dictionary];
    }
    return pool;
}

+ (NSMutableDictionary<ExtrinsicState *, SignInfo *> *)pool2
{
    static NSMutableDictionary<ExtrinsicState *, SignInfo *> *pool;
    if (pool == nil) {
        pool = [NSMutableDictionary dictionary];
    }
    return pool;
}

+ (SignInfo *)fetchSignInfo
{
    return [SignInfo new];
    
}

+ (SignInfo *)fetchSignInfo:(NSString *)key
{
    SignInfo *result;
    if (key != nil &&
        ![[self pool].allKeys containsObject:key]) {
//        NSLog(@"New-%@", key);
        result = [[SignInfo4Pool alloc] initWithKey:key];
        //缓存起来
        [[self pool] setObject:result forKey:key];
    } else if (key != nil) {
        result = [[self pool] objectForKey:key];
//        NSLog(@"Cache-%@", key);
    }
    return result;
}

+ (SignInfo *)fetchSignInfoWithState:(ExtrinsicState *)key
{
    SignInfo *result;
    if (key != nil &&
        ![[self pool2].allKeys containsObject:key]) {
//        NSLog(@"New-%@", key);
        result = [SignInfo new];
        //缓存起来
        [[self pool] setObject:result forKey:key];
    } else if (key != nil) {
        result = [[self pool2] objectForKey:key];
//        NSLog(@"Cache-%@", key);
    }
    return result;
}

@end
