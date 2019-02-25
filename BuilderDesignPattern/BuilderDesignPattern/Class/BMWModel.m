//
//  BMWModel.m
//  BuilderDesignPattern
//
//  Created by User on 9/13/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "BMWModel.h"

@implementation BMWModel

- (void)start {
    NSLog(@"%@%s\n", self.description, __FUNCTION__);
}

- (void)stop {
    NSLog(@"%@%s\n", self.description, __FUNCTION__);
}

- (void)alarm {
    NSLog(@"%@%s\n", self.description, __FUNCTION__);
}

- (void)engineBoom {
    NSLog(@"%@%s\n", self.description, __FUNCTION__);
}

@end
