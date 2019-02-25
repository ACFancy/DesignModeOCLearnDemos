//
//  CarBuilder.m
//  BuilderDesignPattern
//
//  Created by User on 9/13/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "CarBuilder.h"

@implementation CarBuilder

- (void)setSequence:(NSArray *)sequence {
    @throw [NSException exceptionWithName:@"AbstractClassErrorDomain" reason:@"abstract method must override in subclass" userInfo:nil];
}

- (id<CarModel>)getCarModel {
    @throw [NSException exceptionWithName:@"AbstractClassErrorDomain" reason:@"abstract method must override in subclass" userInfo:nil];
}

@end
