//
//  HummerH3Model.m
//  TemplateMethodPattern
//
//  Created by User on 9/6/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "HummerH3Model.h"

@implementation HummerH3Model {
    @protected
    BOOL _alarmFlag;
}

- (instancetype)init {
    if (self = [super init]) {
        _alarmFlag = YES;
    }
    return self;
}

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
    return _alarmFlag;
}

- (void)setAlarm:(BOOL)isAlarm {
    _alarmFlag = isAlarm;
}

@end
