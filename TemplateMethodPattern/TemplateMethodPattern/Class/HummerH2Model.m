//
//  HummerH2Model.m
//  TemplateMethodPattern
//
//  Created by User on 9/6/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "HummerH2Model.h"

@implementation HummerH2Model

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

//注意　在软件开发过程中，如果相同的一段代码复制过两次，就需要对设计产生怀疑，架构师要明确地说明为什么相同的逻辑要出现两次或更多次。
- (void)run {
    [self start];
    [self engineBoom];
    [self alarm];
    [self stop];
}

@end
