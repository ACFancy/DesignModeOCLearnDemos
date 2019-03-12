//
//  DUglyDuckling.m
//  StructDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import "DUglyDuckling.h"

@implementation DUglyDuckling

- (void)desBehavior
{
    NSLog(@"Swim %s", __FUNCTION__);
    [self fly];
}

@end
