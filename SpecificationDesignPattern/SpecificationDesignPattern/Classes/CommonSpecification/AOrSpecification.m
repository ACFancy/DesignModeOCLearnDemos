//
//  AOrSpecification.m
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#import "AOrSpecification.h"

@interface AOrSpecification ()

@property (nonatomic, strong) id<ISpecification> left;
@property (nonatomic, strong) id<ISpecification> right;

@end

@implementation AOrSpecification

- (instancetype)initWithLeft:(id<ISpecification>)left right:(id<ISpecification>)right
{
    if (self = [super init]) {
        _left = left;
        _right = right;
    }
    return self;
}

#pragma mark - Override
- (BOOL)isSatisfiedBy:(NSObject *)candidate
{
    return [_left isSatisfiedBy:candidate] || [_right isSatisfiedBy:candidate];
}

@end
