//
//  NvWa.m
//  FactoryDesignPattern
//
//  Created by User on 9/5/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "NvWa.h"
#import "HumanFactory.h"
#import "WhiteHuman.h"
#import "BlackHuman.h"
#import "YellowHuman.h"

#import "WhiteHumanFactory.h"
#import "BlackHumanFactory.h"
#import "YellowHumanFactory.h"

@implementation NvWa

- (void)execute {
//    id<AbstractHumanFactory> factory = [HumanFactory new];
    id<Human> whiteHuman = [HumanFactory createHuman:[WhiteHuman class]];
    [whiteHuman getColor];
    [whiteHuman talk];
    id<Human> blackHuman = [HumanFactory createHuman:[BlackHuman class]];
    [blackHuman getColor];
    [blackHuman talk];
    id<Human> yellowHuman = [HumanFactory createHuman:[YellowHuman class]];
    [yellowHuman getColor];
    [yellowHuman talk];
}

- (void)executeFactory {
    //多个工厂类
    id<Human> human;
    human = [[WhiteHumanFactory new] createHuman];
    [human getColor];
    [human talk];
    human = [[BlackHumanFactory new] createHuman];
    [human getColor];
    [human talk];
    human = [[YellowHumanFactory new] createHuman];
    [human getColor];
    [human talk];
}

@end
