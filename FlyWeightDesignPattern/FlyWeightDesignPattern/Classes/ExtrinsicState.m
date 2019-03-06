//
//  ExtrinsicState.m
//  FlyWeightDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ExtrinsicState.h"

@implementation ExtrinsicState

//JAVA中 注意，一定要覆写equals和hashCode方法，否则它作为HashMap中的key值是根本没有意义的，只有hashCode值相等，并且equals返回结果为true，两个对象才相等，也只有在这种情况下才有可能从对象池中查找获得对象。
//OC中也是类似
#pragma mark - Override
- (BOOL)isEqual:(id)object
{
    if ([object isMemberOfClass:[self class]]) {
        ExtrinsicState *state = (ExtrinsicState *)object;
        return [state.location isEqual:_location] && [state.subject isEqual:_location];
    }
    return NO;
}

- (NSUInteger)hash
{
    return [_location hash] ^ [_subject hash];
}

- (id)copyWithZone:(NSZone *)zone
{
    ExtrinsicState *copy = [[self class] allocWithZone:zone];
    if (copy) {
        copy.location = [_location copyWithZone:zone];
        copy.subject = [_subject copyWithZone:zone];
    }
    return copy;
}

@end
