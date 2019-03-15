//
//  LS_A.m
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "LS_A.h"
#import "FileManager.h"
#import "CommandVO.h"

@implementation LS_A

- (NSString *)fetchOperateParam
{
    return A_PARAM;
}

- (NSString *)echo:(CommandVO *)vo
{
    return [FileManager ls_a:[vo formatData]];
}

@end
