//
//  Snipper.m
//  LiskovSubstitutionPrinciple
//
//  Created by User on 8/30/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "Snipper.h"

#import "AUG.h"

@implementation Snipper {
@private
    AUG *_gun;
}

- (void)setGun:(AUG *)gun {
    _gun = gun;
}

- (void)killEnemy {
    NSLog(@"%@ %s\n", self.description, __FUNCTION__);
    [_gun zoomOut];
    [_gun shoot];
}

@end
