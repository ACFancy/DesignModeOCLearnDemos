//
//  Invoker.m
//  CommandDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Invoker.h"
#import "Command.h"

@interface Invoker ()

@property (nonatomic, strong) Command *command;

@end

@implementation Invoker

- (void)updateCommand:(Command *)command
{
    _command = command;
}

- (void)action
{
    [_command execute];
}

@end
