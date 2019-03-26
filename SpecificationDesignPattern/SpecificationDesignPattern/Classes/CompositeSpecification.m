//
//  CompositeSpecification.m
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#import "CompositeSpecification.h"
#import "AndSpecification.h"
#import "OrSpecification.h"
#import "NotSpecification.h"

@implementation CompositeSpecification

//这三个规格书都是不发生变化的，只要使用该框架，三个规格书都要实现的，而且代码基本上是雷同的，所以才有了父类依赖子类的设计，否则是严禁出现父类依赖子类的情况的
- (BOOL)isSatisfiedBy:(User *)user
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

- (id<IUserSpecification>)AND:(id<IUserSpecification>)userSpec
{
    return [[AndSpecification alloc] initWithLeft:self right:userSpec];
}

- (id<IUserSpecification>)OR:(id<IUserSpecification>)userSpec
{
    return [[OrSpecification alloc] initWithLeft:self right:userSpec];
}

- (id<IUserSpecification>)NOT
{
    return [[NotSpecification alloc] initWithSpec:self];
}

@end
