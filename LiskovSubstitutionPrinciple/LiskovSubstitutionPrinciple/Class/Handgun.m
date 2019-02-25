//
//  Handgun.m
//  LiskovSubstitutionPrinciple
//
//  Created by User on 8/30/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "Handgun.h"

@implementation Handgun

- (void)shoot {
    NSLog(@"%@ %s\n", self.description, __FUNCTION__);
}

@end
