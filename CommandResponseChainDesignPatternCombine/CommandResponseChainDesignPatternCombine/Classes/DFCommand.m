//
//  DFCommand.m
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "DFCommand.h"
#import "AbstractDF.h"

@implementation DFCommand

- (NSString *)execute:(CommandVO *)vo
{
    return [[self buildChain:[AbstractDF class]].firstObject handleMessage:vo];
}

@end
