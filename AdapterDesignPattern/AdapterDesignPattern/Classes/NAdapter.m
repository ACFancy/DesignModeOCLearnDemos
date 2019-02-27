//
//  NAdapter.m
//  AdapterDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "NAdapter.h"

@interface NAdapter ()

@property (nonatomic, strong) Adaptee1 *adaptee1;
@property (nonatomic, strong) Adaptee2 *adaptee2;

@end

@implementation NAdapter

- (instancetype)initWithAdaptee1:(Adaptee1 *)adaptee1 adaptee2:(Adaptee2*)adaptee2
{
    if (self = [super init]) {
        _adaptee1 = adaptee1;
        _adaptee2 = adaptee2;
    }
    return self;
}

- (void)request
{
    [_adaptee1 specialRequest1];
    [_adaptee2 specialRequest2];
}

@end
