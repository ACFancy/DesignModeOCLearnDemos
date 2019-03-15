//
//  DF_G.m
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "DF_G.h"
#import "DiskManager.h"
#import "CommandVO.h"

@implementation DF_G

- (NSString *)fetchOperateParam
{
    return G_PARAM;
}

- (NSString *)echo:(CommandVO *)vo
{
    return [DiskManager df_g:[vo formatData]];
}

@end
