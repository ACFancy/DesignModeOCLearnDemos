//
//  LS_L.m
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "LS_L.h"
#import "FileManager.h"
#import "CommandVO.h"

@implementation LS_L

- (NSString *)fetchOperateParam
{
    return L_PARAM;
}

- (NSString *)echo:(CommandVO *)vo
{
    return [FileManager ls_l:[vo formatData]];
}

@end
