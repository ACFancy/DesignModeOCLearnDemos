//
//  NvWa.m
//  AbstractFactoryDesignPattern
//
//  Created by User on 9/6/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "NvWa.h"
#import "MaleFactory.h"
#import "FemaleFactory.h"

@implementation NvWa

+ (void)execute {
    MaleFactory *maleFactory = [MaleFactory new];
    FemaleFactory *femaleFactory = [FemaleFactory new];
    id<Human> maleHuman = [maleFactory createBlackHuman];
    [maleHuman getColor];
    [maleHuman getSex];
    maleHuman = [maleFactory createWhiteHuman];
    [maleHuman getColor];
    [maleHuman getSex];
    maleHuman = [maleFactory createYellowHuman];
    [maleHuman getColor];
    [maleHuman getSex];
    id<Human> femaleHuman = [femaleFactory createBlackHuman];
    [femaleHuman getColor];
    [femaleHuman getSex];
    femaleHuman = [femaleFactory createWhiteHuman];
    [femaleHuman getColor];
    [femaleHuman getSex];
    femaleHuman = [femaleFactory createYellowHuman];
    [femaleHuman getColor];
    [femaleHuman getSex];
}

@end
