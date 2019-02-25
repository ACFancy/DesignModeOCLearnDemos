//
//  HumanFactory.m
//  FactoryDesignPattern
//
//  Created by User on 9/5/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "HumanFactory.h"

@implementation HumanFactory

- (id<Human>)createHuman:(Class)c {
    id<Human> human = nil;
    @try {
        if (c && [c conformsToProtocol:@protocol(Human)]) {
            human = [c new];
        }
    } @catch (NSException *exception) {
        NSLog(@"%@", [exception description]);
    }
    return human;
}

+ (id<Human>)createHuman:(Class)c {
    id<Human> human = nil;
    @try {
        if (c && [c conformsToProtocol:@protocol(Human)]) {
            human = [c new];
        }
    } @catch (NSException *exception) {
        NSLog(@"%@", [exception description]);
    }
    return human;
}

@end
