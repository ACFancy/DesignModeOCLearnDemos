//
//  SortDecorator.m
//  DecoratorDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "SortDecorator.h"

@implementation SortDecorator

- (instancetype)initWithReport:(SchoolReport *)report
{
    self = [super initWithReport:report];
    return self;
}

#pragma mark - Override
- (void)report
{
    [super report];
    [self reportSort];
}

#pragma mark - Private Methods
- (void)reportSort
{
    NSLog(@"我是排名第38名...");
}

@end
