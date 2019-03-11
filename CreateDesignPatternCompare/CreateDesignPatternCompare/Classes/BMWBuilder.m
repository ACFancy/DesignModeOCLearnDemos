//
//  BMWBuilder.m
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import "BMWBuilder.h"
#import "Blueprint.h"

@implementation BMWBuilder

- (NSString *)buildEngine
{
    return [self getBlueprint].engine;
}

- (NSString *)buildWheel
{
    return [self getBlueprint].wheel;
}

@end
