//
//  DF.m
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "DF.h"
#import "DiskManager.h"
#import "CommandVO.h"

@implementation DF

- (NSString *)fetchOperateParam
{
    return DDEFAULT_PARAM;
}

- (NSString *)echo:(CommandVO *)vo
{
    return [DiskManager df:[vo formatData]];
}

@end
