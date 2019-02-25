//
//  Director.m
//  BuilderDesignPattern
//
//  Created by User on 2019/2/21.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Director.h"
#import "BenzBuilder.h"
#import "BMWBuilder.h"
#import "BenzModel.h"
#import "BMWModel.h"
/*
 清晰、简单吧，我们写程序重构的最终目的就是：简单、清晰。
 */
@interface Director ()

@property (nonatomic, strong) NSMutableArray *sequence;
@property (nonatomic, strong) BenzBuilder *benzBuilder;
@property (nonatomic, strong) BMWBuilder *bmwBuilder;

@end

@implementation Director

#pragma mark - init Methods
- (instancetype)init
{
    if (self = [super init]) {
        _sequence = [NSMutableArray array];
        _benzBuilder = [BenzBuilder new];
        _bmwBuilder = [BMWBuilder new];
    }
    return self;
}

#pragma mark - Public Methods
- (BenzModel *)getABenzModel
{
    [_sequence removeAllObjects];
    [_sequence addObject:@"start"];
    [_sequence addObject:@"stop"];
    [_benzBuilder setSequence:_sequence.copy];
    return [_benzBuilder getCarModel];
}

- (BenzModel *)getBBenzModel
{
    [_sequence removeAllObjects];
    [_sequence addObject:@"engine boom"];
    [_sequence addObject:@"start"];
    [_sequence addObject:@"stop"];
    [_benzBuilder setSequence:_sequence.copy];
    return [_benzBuilder getCarModel];
}

- (BMWModel *)getCBMWModel
{
    [_sequence removeAllObjects];
    [_sequence addObject:@"alarm"];
    [_sequence addObject:@"start"];
    [_sequence addObject:@"stop"];
    [_bmwBuilder setSequence:_sequence.copy];
    return [_bmwBuilder getCarModel];
}

- (BMWModel *)getDBMWModel
{
    [_sequence removeAllObjects];
    [_sequence addObject:@"start"];
    [_bmwBuilder setSequence:_sequence.copy];
    return [_bmwBuilder getCarModel];
}

@end
