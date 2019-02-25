//
//  BeforeAdvice.m
//  ProxyDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "BeforeAdvice.h"

@implementation BeforeAdvice

- (void)exec
{
    NSLog(@"%s", __FUNCTION__);
}

@end
