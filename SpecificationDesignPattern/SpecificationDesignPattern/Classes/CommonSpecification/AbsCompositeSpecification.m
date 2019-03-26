//
//  AbsCompositeSpecification.m
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#import "AbsCompositeSpecification.h"
#import "AAndSpecification.h"
#import "AOrSpecification.h"
#import "ANotSpecification.h"

@implementation AbsCompositeSpecification

//是否满足条件由实现类实现
- (BOOL)isSatisfiedBy:(NSObject *)candidate
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

//AND
- (id<ISpecification>)AND:(id<ISpecification>)spec
{
    return [[AAndSpecification alloc] initWithLeft:self right:spec];
}

//Or
- (id<ISpecification>)Or:(id<ISpecification>)spec
{
    return [[AOrSpecification alloc] initWithLeft:self right:spec];
}

//NOT
- (id<ISpecification>)NOT
{
    return [[ANotSpecification alloc] initWithSpec:self];
}

@end
