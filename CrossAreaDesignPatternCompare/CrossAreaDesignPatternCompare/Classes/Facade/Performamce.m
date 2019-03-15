//
//  Performamce.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Performamce.h"
#import "BasicSalary.h"

@interface Performamce ()

@property (nonatomic, strong) BasicSalary *basicSalary;

@end

@implementation Performamce

- (instancetype)init
{
    if (self = [super init]) {
        _basicSalary = [BasicSalary new];
    }
    return self;
}

- (NSInteger)fetchPerformance
{
    NSInteger per = arc4random_uniform(100);
    return ([_basicSalary fetchBasicSalary] * per / 100);
}

@end
