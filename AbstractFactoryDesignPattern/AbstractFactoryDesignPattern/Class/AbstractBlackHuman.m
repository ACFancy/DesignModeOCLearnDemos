//
//  AbstractBlackHuman.m
//  AbstractFactoryDesignPattern
//
//  Created by User on 9/6/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "AbstractBlackHuman.h"

@implementation AbstractBlackHuman

- (void)getColor {
    @throw [NSException exceptionWithName:@"AbstractErrorDomain" reason:@"Must implementation in subclass" userInfo:nil];
}

- (void)talk {
    @throw [NSException exceptionWithName:@"AbstractErrorDomain" reason:@"Must implementation in subclass" userInfo:nil];
}

- (void)getSex {
    @throw [NSException exceptionWithName:@"AbstractErrorDomain" reason:@"Must implementation in subclass" userInfo:nil];
}

@end
