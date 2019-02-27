//
//  HFather.m
//  ChainOfResponsibilityDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "HFather.h"

@implementation HFather

- (instancetype)init
{
    self = [super initWithLevel:FATHER_LEVEL_REQUEST];
    return self;
}

- (void)response:(id<IWomen>)women
{
    NSLog(@"%s-%@", __FUNCTION__, [women fetchRequest]);
}

@end
