//
//  BMWBuilder.m
//  BuilderDesignPattern
//
//  Created by User on 9/13/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "BMWBuilder.h"
#import "BMWModel.h"

@interface BMWBuilder () {
    @private
    BMWModel *_bmw;
}

@end

@implementation BMWBuilder

#pragma mark - init Methods
- (instancetype)init {
    if (self = [super init]) {
        _bmw = [BMWModel new];
    }
    return self;
}

#pragma mark - Override Methods
- (id<CarModel>)getCarModel {
    return _bmw;
}

- (void)setSequence:(NSArray *)sequence {
    [_bmw setSequence:sequence];
}

@end
