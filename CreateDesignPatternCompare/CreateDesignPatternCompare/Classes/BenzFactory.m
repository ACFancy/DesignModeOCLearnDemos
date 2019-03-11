//
//  BenzFactory.m
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import "BenzFactory.h"
#import "BenzSuv.h"
#import "BenzVan.h"

@implementation BenzFactory

- (id<ICar>)createVan
{
    return [BenzVan new];
}

- (id<ICar>)createSuv
{
    return [BenzSuv new];
}

@end
