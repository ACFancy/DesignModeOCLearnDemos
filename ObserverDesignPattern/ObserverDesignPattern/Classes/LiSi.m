//
//  LiSi.m
//  ObserverDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "LiSi.h"

@implementation LiSi

- (void)update:(NSString *)context
{
    NSLog(@"ChangeComing");
    [self reportToEmperor:context];
    NSLog(@"ChangeLeaving");
}

#pragma mark - Private Methods
- (void)reportToEmperor:(NSString *)context
{
    NSLog(@"Reporting: %@", context);
}

@end
