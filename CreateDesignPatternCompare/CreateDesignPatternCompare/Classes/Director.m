//
//  Director.m
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Director.h"
#import "AdultSuperManBuilder.h"
#import "ChildSuperManBuilder.h"

@implementation Director

#pragma mark - Private Methods
+ (Builder *)adultBuilder
{
    static Builder *adultBuilder;
    if (adultBuilder == nil) {
        adultBuilder = [AdultSuperManBuilder new];
    }
    return adultBuilder;
}

+ (Builder *)childBuilder
{
    static Builder *childBuilder;
    if (childBuilder == nil) {
        childBuilder = [ChildSuperManBuilder new];
    }
    return childBuilder;
}

#pragma mark - Public Methods
+ (SuperMan *)fetchAdultSuperMan
{
    return [[self adultBuilder] superMan];
}

+ (SuperMan *)fetchChildSuperMan
{
    return [[self childBuilder] superMan];
}

@end
