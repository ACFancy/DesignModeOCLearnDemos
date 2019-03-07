//
//  HouseCrop.m
//  BridgeDesignPattern
//
//  Created by User on 2019/3/7.
//  Copyright © 2019年 User. All rights reserved.
//

#import "HouseCorp.h"
#import "House.h"

@implementation HouseCorp

- (instancetype)initWithProduct:(House *)house
{
    self = [super initWithProduct:house];
    return self;
}

- (void)produce
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)sell
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)makeMoney
{
    [super makeMoney];
    NSLog(@"%s", __FUNCTION__);
}

@end
