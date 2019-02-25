//
//  Client.m
//  LiskovSubstitutionPrinciple
//
//  Created by User on 8/30/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "Client.h"
#import "Soldier.h"
#import "Rifle.h"
#import "Snipper.h"
#import "AUG.h"

@implementation Client

+ (void)execute {
    Soldier *sam = [Soldier new];
    [sam setGun:[Rifle new]];
    [sam killEnemy];
    
    Snipper *sim = [Snipper new];
    [sim setGun:[AUG new]];
    [sim killEnemy];
}

@end
