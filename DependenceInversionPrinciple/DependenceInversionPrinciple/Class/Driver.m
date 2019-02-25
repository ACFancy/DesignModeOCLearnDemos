//
//  Driver.m
//  DependenceInversionPrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "Driver.h"

@interface Driver() {
    @private
    id<ICar> _car;
}

@end

@implementation Driver

#pragma mark - init Methods
//构造函数依赖注入
- (instancetype)initWithCar:(id<ICar>)car {
    if (self = [super init]) {
        _car = car;
    }
    return self;
}

#pragma mark - Protocol Methods
- (void)drive:(id<ICar>)car {
    [car run];
}

- (void)drive {
    [_car run];
}

//setter依赖注入
- (void)setCar:(id<ICar>)car {
    _car = car;
}

@end
