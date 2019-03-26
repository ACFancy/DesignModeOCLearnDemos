//
//  AAndSpecification.m
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#import "AAndSpecification.h"

@interface AAndSpecification ()

@property (nonatomic, strong) id<ISpecification> left;
@property (nonatomic, strong) id<ISpecification> right;

@end

@implementation AAndSpecification

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
    return [_left isSatisfiedBy:candidate] && [_right isSatisfiedBy:candidate];
}

@end
