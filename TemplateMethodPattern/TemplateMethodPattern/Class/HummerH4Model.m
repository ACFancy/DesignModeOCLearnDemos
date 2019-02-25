//
//  HummerH4Model.m
//  TemplateMethodPattern
//
//  Created by User on 9/6/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "HummerH4Model.h"

@implementation HummerH4Model

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

- (BOOL)isAlarm {
    return false;
}

@end
