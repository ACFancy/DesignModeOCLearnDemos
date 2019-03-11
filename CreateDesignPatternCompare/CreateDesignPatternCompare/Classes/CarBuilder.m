//
//  CarBuilder.m
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import "CarBuilder.h"
#import "Car.h"
#import "Blueprint.h"

@interface CarBuilder ()

@property (nonatomic, strong) id<ICar2> car;
@property (nonatomic, strong) Blueprint *bp;

@end

@implementation CarBuilder

#pragma mark - Public Methods
- (Car *)buildCar
{
    return [[Car alloc] initWithEngine:[self buildEngine] wheel:[self buildWheel]];
}

- (void)receiveBlueprint:(Blueprint *)bp
{
    _bp = bp;
}

- (NSString *)buildWheel
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

- (NSString *)buildEngine
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

- (Blueprint *)getBlueprint
{
    return _bp;
}

@end
