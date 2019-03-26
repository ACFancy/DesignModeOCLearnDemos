//
//  NotSpecification.m
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#import "NotSpecification.h"

@interface NotSpecification ()

@property (nonatomic, strong) id<IUserSpecification> spec;

@end

@implementation NotSpecification

- (instancetype)initWithSpec:(id<IUserSpecification>)spec
{
    if (self = [super init]) {
        _spec = spec;
    }
    return self;
}

#pragma mark - Override
- (BOOL)isSatisfiedBy:(User *)user
{
    return ![_spec isSatisfiedBy:user];
}

@end
