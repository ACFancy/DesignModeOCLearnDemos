//
//  Facade2.m
//  FacadeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Facade2.h"
#import "Facade.h"

@interface Facade2 ()

@property (nonatomic, strong) Facade *facade;

@end

@implementation Facade2

- (instancetype)init
{
    if (self = [super init]) {
        _facade = [Facade new];
    }
    return self;
}

- (void)methodB
{
    [_facade methodB];
}

@end
