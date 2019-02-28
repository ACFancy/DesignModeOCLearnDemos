//
//  Context.m
//  FacadeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Context.h"
#import "ClassA.h"
#import "ClassC.h"

@interface Context ()

@property (nonatomic, strong) ClassA *a;
@property (nonatomic, strong) ClassC *c;

@end

@implementation Context

- (instancetype)init
{
    if (self = [super init]) {
        _a = [ClassA new];
        _c = [ClassC new];
    }
    return self;
}

- (void)complexMethod
{
    [_a doSomethingA];
    [_c doSomethingC];
}

@end
