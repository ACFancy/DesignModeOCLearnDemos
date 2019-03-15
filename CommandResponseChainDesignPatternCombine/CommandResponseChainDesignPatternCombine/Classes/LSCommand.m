//
//  LSCommand.m
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "LSCommand.h"
#import "AbstracLS.h"
#import "CommandName.h"

@implementation LSCommand

- (NSString *)execute:(CommandVO *)vo
{
    CommandName *firstNode = [self buildChain:[AbstracLS class]].firstObject;
    return [firstNode handleMessage:vo];
}

@end
