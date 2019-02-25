//
//  Creator2.m
//  AbstractFactoryDesignPattern
//
//  Created by User on 9/6/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "Creator2.h"
#import "ProductA2.h"
#import "ProductB2.h"

@implementation Creator2

- (id<AbstractProductA>)createProductA {
    return [ProductA2 new];
}

- (id<AbstractProductB>)createProductB {
    return [ProductB2 new];
}

@end
