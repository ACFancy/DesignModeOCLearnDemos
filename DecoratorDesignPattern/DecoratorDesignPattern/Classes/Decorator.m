//
//  Decorator.m
//  DecoratorDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Decorator.h"

@interface Decorator ()

@property (nonatomic, strong) SchoolReport *sr;

@end

@implementation Decorator

- (instancetype)initWithReport:(SchoolReport *)report
{
    if (self = [super init]) {
        _sr = report;
    }
    return self;
}

- (void)report
{
    [_sr report];
}

- (void)sign:(NSString *)name
{
    [_sr sign:name];
}

@end
