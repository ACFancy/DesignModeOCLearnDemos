//
//  MaleYellowHuman.m
//  AbstractFactoryDesignPattern
//
//  Created by User on 9/6/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "MaleYellowHuman.h"

@implementation MaleYellowHuman

- (void)getSex {
    NSLog(@"%@%s\n", self.description, __FUNCTION__);
}

- (void)getColor {
    NSLog(@"%@%s\n", self.description, __FUNCTION__);
}

- (void)talk {
    NSLog(@"%@%s\n", self.description, __FUNCTION__);
}

@end
