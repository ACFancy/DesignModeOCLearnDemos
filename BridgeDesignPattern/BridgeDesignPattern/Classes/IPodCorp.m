//
//  IPodCorp.m
//  BridgeDesignPattern
//
//  Created by User on 2019/3/7.
//  Copyright © 2019年 User. All rights reserved.
//

#import "IPodCorp.h"

@implementation IPodCorp

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
