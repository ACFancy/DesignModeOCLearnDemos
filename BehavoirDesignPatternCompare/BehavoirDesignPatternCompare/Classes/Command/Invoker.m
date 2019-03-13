//
//  Invoker.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Invoker.h"

@interface Invoker ()

@property (nonatomic, strong) AbstractCmd *command;

@end

@implementation Invoker

- (instancetype)initWithCmd:(AbstractCmd *)command
{
    if (self = [super init]) {
        _command = command;
    }
    return self;
}

- (BOOL)executeWithSource:(NSString *)source to:(NSString *)to
{
    return [_command executeWithSource:source to:to];
}

@end
