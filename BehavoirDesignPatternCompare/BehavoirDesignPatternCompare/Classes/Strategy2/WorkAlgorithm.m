
//
//  WorkAlgorithm.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/13.
//  Copyright © 2019年 User. All rights reserved.
//

#import "WorkAlgorithm.h"

@implementation WorkAlgorithm

- (void)work
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Mus be override in subclass" userInfo:nil];
}

@end
