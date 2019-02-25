//
//  ConcreteBuilder.m
//  BuilderDesignPattern
//
//  Created by User on 2019/2/21.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ConcreteBuilder.h"
#import "ConcreteProduct.h"


@implementation ConcreteBuilder

- (instancetype)init
{
    if (self = [super init]) {
        
    }
    return self;
}

- (void)setPart
{
    [super setPart];
}

- (id<Product>)buildProduct
{
    return [ConcreteProduct new];
}

@end
