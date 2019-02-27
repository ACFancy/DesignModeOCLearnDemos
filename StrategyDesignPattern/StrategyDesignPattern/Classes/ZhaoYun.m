//
//  ZhaoYun.m
//  StrategyDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ZhaoYun.h"
#import "Context.h"
#import "BackDoor.h"
#import "GivenGreenLight.h"
#import "BlockEnemy.h"

@implementation ZhaoYun

- (void)execute
{
    Context *context = [[Context alloc] initWithStrategy:[BackDoor new]];
    [context operate];
    
    context = [[Context alloc] initWithStrategy:[GivenGreenLight new]];
    [context operate];
    
    context = [[Context alloc] initWithStrategy:[BlockEnemy new]];
    [context operate];
}

@end
