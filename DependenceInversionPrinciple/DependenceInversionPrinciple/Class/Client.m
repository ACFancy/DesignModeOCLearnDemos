//
//  Client.m
//  DependenceInversionPrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "Client.h"
#import "Driver.h"
#import "Benz.h"

@implementation Client

- (void)execute {
    id<IDriver> zhan = [Driver new];
    id<IDriver, ICar> instance;
    id<ICar> benz = [Benz new];
    [zhan drive:benz];
}

@end
