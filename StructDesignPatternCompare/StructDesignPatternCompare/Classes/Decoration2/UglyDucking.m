//
//  UglyDucking.m
//  StructDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import "UglyDucking.h"

@implementation UglyDucking

- (void)cry
{
    NSLog(@"%s", __FUNCTION__);
}

- (void)fly
{
    NSLog(@"Can't %s", __FUNCTION__);
}

- (void)desAppearance
{
    NSLog(@"Ugly %s", __FUNCTION__);
}

@end
