//
//  WangSi.m
//  ObserverDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "WangSi.h"

@implementation WangSi

- (void)update:(NSString *)context
{
    NSLog(@"WangChangComing");
    [self cry:context];
    NSLog(@"WangChangLeaving");
    
}

#pragma mark - Private Methods
- (void)cry:(NSString *)context
{
    NSLog(@"%s%@", __FUNCTION__, context);
}

@end
