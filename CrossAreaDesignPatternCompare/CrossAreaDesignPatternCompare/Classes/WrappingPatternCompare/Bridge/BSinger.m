//
//  Singer.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "BSinger.h"
#import "Sing.h"

@implementation BSinger

- (instancetype)init
{
    self = [super initWithAction:[Sing new]];
    return self;
}

- (void)doJob
{
    NSLog(@"Singer");
    [super doJob];
}

@end
