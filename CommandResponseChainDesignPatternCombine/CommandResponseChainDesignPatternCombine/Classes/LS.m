//
//  LS.m
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "LS.h"
#import "FileManager.h"
#import "CommandVO.h"

@implementation LS

- (NSString *)fetchOperateParam
{
    return DEFAULT_PARAM;
}

- (NSString *)echo:(CommandVO *)vo
{
    return [FileManager ls:[vo formatData]];
}

@end
