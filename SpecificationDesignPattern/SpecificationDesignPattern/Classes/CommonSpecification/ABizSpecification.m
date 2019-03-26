//
//  ABizSpecification.m
//  SpecificationDesignPattern
//
//  Created by User on 2019/3/26.
//  Copyright © 2019 User. All rights reserved.
//

#import "ABizSpecification.h"

@interface ABizSpecification ()

@property (nonatomic, strong) NSObject *obj;

@end

@implementation ABizSpecification

- (instancetype)initWithObj:(NSObject *)obj
{
    if (self = [super init]) {
        _obj = obj;
    }
    return self;
}

#pragma mark - Override
- (BOOL)isSatisfiedBy:(NSObject *)candidate
{
    //根据基准对象和候选对象，进行业务判断，返回boolean
    return NO;
}

@end
