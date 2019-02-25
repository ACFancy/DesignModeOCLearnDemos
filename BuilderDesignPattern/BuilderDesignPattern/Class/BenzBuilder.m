//
//  BenzBuilder.m
//  BuilderDesignPattern
//
//  Created by User on 9/13/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "BenzBuilder.h"
#import "BenzModel.h"

@interface BenzBuilder () {
    @private
    BenzModel *_benz;
}

@end

@implementation BenzBuilder

#pragma mark - init Methods
- (instancetype)init {
    if (self = [super init]) {
        _benz = [BenzModel new];
    }
    return self;
}

#pragma mark - Override Methods
- (id<CarModel>)getCarModel {
    return _benz;
}

- (void)setSequence:(NSArray *)sequence {
    [_benz setSequence:sequence];
}

@end
