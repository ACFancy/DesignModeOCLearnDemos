//
//  BenzBuilder.m
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import "BenzBuilder.h"
#import "Blueprint.h"

@implementation BenzBuilder

- (NSString *)buildEngine
{
    return [self getBlueprint].engine;
}

- (NSString *)buildWheel
{
    return [self getBlueprint].wheel;
}

@end
