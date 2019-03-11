//
//  Builder.m
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Builder.h"
#import "SuperMan.h"

@implementation Builder

- (instancetype)init
{
    if (self = [super init]) {
        _superMan = [SuperMan new];
    }
    return self;
}

- (void)updateBody:(NSString *)body
{
    _superMan.body = body;
}

- (void)updateSpecialTalent:(NSString *)specialTalent
{
    _superMan.specialTalent = specialTalent;
}

- (void)updateSpecialSymbol:(NSString *)specialSymbol
{
    _superMan.specialSymbol = specialSymbol;
}

@end
