//
//  YellowHumanFactory.m
//  FactoryDesignPattern
//
//  Created by User on 9/5/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "YellowHumanFactory.h"
#import "YellowHuman.h"

@implementation YellowHumanFactory

- (id<Human>)createHuman {
    return [YellowHuman new];
}

@end
