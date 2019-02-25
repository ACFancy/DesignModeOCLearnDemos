//
//  PerttyGirl.m
//  InterfaceIsolationPrinciple
//
//  Created by User on 8/31/18.
//  Copyright © 2018 User. All rights reserved.
//

#import "PerttyGirl.h"

@interface PerttyGirl()

@property (nonatomic, strong) NSString *name;

@end

@implementation PerttyGirl

#pragma mark - init Methods
- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

#pragma mark - Protocol Interface Methods

- (void)goodLooking {
    NSLog(@"%@%@%s\n", self.name ? self.name : @"", self.description, __FUNCTION__);
}

- (void)niceFigure {
    NSLog(@"%@%@%s\n", self.name ? self.name : @"", self.description, __FUNCTION__);
}

- (void)greatTemperament {
    NSLog(@"%@%@%s\n", self.name ? self.name : @"", self.description, __FUNCTION__);
}

@end
