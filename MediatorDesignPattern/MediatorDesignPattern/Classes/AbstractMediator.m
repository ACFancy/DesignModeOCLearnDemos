//
//  AbstractMediator.m
//  MediatorDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AbstractMediator.h"
#import "Purchase.h"
#import "Sale.h"
#import "Stock.h"

@implementation AbstractMediator

- (instancetype)init
{
    if (self = [super init]) {
        _purchase = [[Purchase alloc] initWithMediator:self];
        _sale = [[Sale alloc] initWithMediator:self];
        _stock = [[Stock alloc] initWithMediator:self];
    }
    return self;
}

- (void)execute:(NSString *)str objects:(NSArray *)objects
{
    @throw [NSException exceptionWithName:@"AbstractorMediatorCallErrorDomain" reason:@"Must Override In SubClass" userInfo:nil];
}

@end
