//
//  ANotSpecification.m
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#import "ANotSpecification.h"

@interface ANotSpecification ()

@property (nonatomic, strong) id<ISpecification> spec;

@end

@implementation ANotSpecification

- (instancetype)initWithSpec:(id<ISpecification>)spec
{
    if (self = [super init]) {
        _spec = spec;
    }
    return self;
}

#pragma mark - Override
- (BOOL)isSatisfiedBy:(NSObject *)candidate
{
    return ![_spec isSatisfiedBy:candidate];
}

@end
