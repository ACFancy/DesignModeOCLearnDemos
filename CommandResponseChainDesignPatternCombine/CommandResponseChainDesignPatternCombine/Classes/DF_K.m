//
//  DF_K.m
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "DF_K.h"
#import "DiskManager.h"
#import "CommandVO.h"

@implementation DF_K

- (NSString *)fetchOperateParam
{
    return K_PARAM;
}

- (NSString *)echo:(CommandVO *)vo
{
    return [DiskManager df_k:[vo formatData]];
}

@end
