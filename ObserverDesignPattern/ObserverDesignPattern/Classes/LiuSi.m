//
//  LiuSi.m
//  ObserverDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "LiuSi.h"

@implementation LiuSi

- (void)update:(NSString *)context
{
    NSLog(@"LiuChangComing");
    [self happy:context];
    NSLog(@"LiuChangLeaving");
}

#pragma mark - Private Methods
- (void)happy:(NSString *)context
{
    NSLog(@"%s%@", __FUNCTION__, context);
}

@end
