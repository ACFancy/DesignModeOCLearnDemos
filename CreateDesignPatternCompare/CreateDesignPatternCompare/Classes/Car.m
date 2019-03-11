//
//  Car.m
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Car.h"

@interface Car ()

@property (nonatomic, strong) NSString *wheel;
@property (nonatomic, strong) NSString *engine;

@end

@implementation Car

- (instancetype)initWithEngine:(NSString *)engine wheel:(NSString *)wheel
{
    if (self = [super init]) {
        _wheel = wheel;
        _engine = engine;
    }
    return self;
}

#pragma mark - Override
- (NSString *)getWheel
{
    return _wheel;
}

- (NSString *)getEngine
{
    return _engine;
}

- (NSString *)toString
{
    return [NSString stringWithFormat:@"Wheel is %@ \n Engine is %@", _wheel, _engine];
}

@end
