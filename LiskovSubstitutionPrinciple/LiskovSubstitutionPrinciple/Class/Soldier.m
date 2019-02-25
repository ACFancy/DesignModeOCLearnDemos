//
//  Soldier.m
//  LiskovSubstitutionPrinciple
//
//  Created by User on 8/30/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "Soldier.h"

#import "AbstractGun.h"

@interface Soldier() {
    @private
    id<AbstractGun> _gun;
}

@end

@implementation Soldier

- (void)setGun:(id<AbstractGun>)gun {
    _gun = gun;
}

- (void)killEnemy {
    NSLog(@"%@ %s\n", self.description, __FUNCTION__);
    [_gun shoot];
}

@end
