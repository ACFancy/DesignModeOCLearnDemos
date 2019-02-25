//
//  WhiteHumanFactory.m
//  FactoryDesignPattern
//
//  Created by User on 9/5/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "WhiteHumanFactory.h"
#import "WhiteHuman.h"

@implementation WhiteHumanFactory

- (id<Human>)createHuman {
    return [WhiteHuman new];
}

@end
