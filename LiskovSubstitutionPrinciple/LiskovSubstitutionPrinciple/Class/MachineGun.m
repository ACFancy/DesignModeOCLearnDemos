//
//  MachineGun.m
//  LiskovSubstitutionPrinciple
//
//  Created by User on 8/30/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "MachineGun.h"

@implementation MachineGun

- (void)shoot {
     NSLog(@"%@ %s\n", self.description, __FUNCTION__);
}

@end
