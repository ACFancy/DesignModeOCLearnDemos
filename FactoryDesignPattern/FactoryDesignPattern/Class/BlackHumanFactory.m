//
//  BlackHumanFactory.m
//  FactoryDesignPattern
//
//  Created by User on 9/5/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "BlackHumanFactory.h"
#import "BlackHuman.h"

@implementation BlackHumanFactory

- (id<Human>)createHuman {
    return [BlackHuman new];
}

@end
