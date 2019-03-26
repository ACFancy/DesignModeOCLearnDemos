//
//  AndSpecification.m
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#import "AndSpecification.h"

@interface AndSpecification ()

@property (nonatomic, strong) id<IUserSpecification> left;
@property (nonatomic, strong) id<IUserSpecification> right;

@end

@implementation AndSpecification

- (instancetype)initWithLeft:(id<IUserSpecification>)left right:(id<IUserSpecification>)right
{
    if (self = [super init]) {
        _left = left;
        _right = right;
    }
    return self;
}

#pragma mark - Override
- (BOOL)isSatisfiedBy:(User *)user
{
    return [_left isSatisfiedBy:user] && [_right isSatisfiedBy:user];
}

@end
