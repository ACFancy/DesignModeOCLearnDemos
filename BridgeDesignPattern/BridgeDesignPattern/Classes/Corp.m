//
//  Crop.m
//  BridgeDesignPattern
//
//  Created by User on 2019/3/7.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Corp.h"
#import "Product.h"

@interface Corp ()

@property (nonatomic, strong) Product *product;

@end

@implementation Corp

- (instancetype)initWithProduct:(Product *)product
{
    if (self = [super init]) {
        _product = product;
    }
    return self;
}

- (void)produce
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}


- (void)sell
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

- (void)makeMoney
{
//    [self produce];
//    [self sell];
    [self.product beProducted];
    [self.product beSelled];
}

@end
