//
//  BMWFactory.m
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import "BMWFactory.h"
#import "BMWVan.h"
#import "BMWSuv.h"

@implementation BMWFactory

- (id<ICar>)createSuv
{
    return [BMWSuv new];
}

- (id<ICar>)createVan
{
    return [BMWVan new];
}

@end
