//
//  BlackHuman.m
//  FactoryDesignPattern
//
//  Created by User on 9/5/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "BlackHuman.h"

@implementation BlackHuman

- (void)getColor {
    NSLog(@"%@%s\n", self.description, __FUNCTION__);
}

- (void)talk {
    NSLog(@"%@%s\n", self.description, __FUNCTION__);
}

@end
