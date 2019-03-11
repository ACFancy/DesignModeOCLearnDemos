//
//  Director2.m
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Director2.h"
#import "BenzBuilder.h"
#import "BMWBuilder.h"
#import "Blueprint.h"
#import "Car.h"

@interface Director2 ()

@property (nonatomic, strong) CarBuilder *benzBuilder;
@property (nonatomic, strong) CarBuilder *bmwBuilder;

@end

@implementation Director2

#pragma mark - init Methods
- (instancetype)init
{
    if (self = [super init]) {
        _benzBuilder = [BenzBuilder new];
        _bmwBuilder = [BMWBuilder new];
    }
    return self;
}

#pragma mark - Public Methods
- (id<ICar2>)createBenzSuv
{
    return [self createCar:_benzBuilder
                    engine:@"benz SUV"
                     wheel:@"benz SUV"];
}

- (id<ICar2>)createBenzVan
{
    return [self createCar:_benzBuilder
                    engine:@"benz Van"
                     wheel:@"benz Van"];
}

- (id<ICar2>)createBMWSuv
{
    return [self createCar:_benzBuilder
                    engine:@"BWM SUV"
                     wheel:@"BWM SUV"];
}

- (id<ICar2>)createBMWVan
{
    return [self createCar:_benzBuilder
                    engine:@"BWM Van"
                     wheel:@"BWM Van"];
}

- (id<ICar2>)createComplexCar
{
    return [self createCar:_benzBuilder
                    engine:@"BWM Van"
                     wheel:@"benz Van"];
}

#pragma mark - Private Methods
- (id<ICar2>)createCar:(CarBuilder *)carBuilder
                engine:(NSString *)engine
                 wheel:(NSString *)wheel
{
    Blueprint *bp = [Blueprint new];
    bp.engine = engine;
    bp.wheel = wheel;
    [carBuilder receiveBlueprint:bp];
    return [carBuilder buildCar];
}

@end
