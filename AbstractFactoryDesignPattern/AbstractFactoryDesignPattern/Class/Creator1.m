//
//  Creator1.m
//  AbstractFactoryDesignPattern
//
//  Created by User on 9/6/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "Creator1.h"
#import "ProductA1.h"
#import "ProductB1.h"

@implementation Creator1

- (id<AbstractProductA>)createProductA {
    return [ProductA1 new];
}

- (id<AbstractProductB>)createProductB {
    return [ProductB1 new];
}

@end
