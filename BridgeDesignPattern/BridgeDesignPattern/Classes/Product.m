//
//  Product.m
//  BridgeDesignPattern
//
//  Created by User on 2019/3/7.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Product.h"

@implementation Product

- (void)beProducted
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

- (void)beSelled
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
