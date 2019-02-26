//
//  AInvoker.m
//  CommandDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AInvoker.h"
#import "ACommand.h"

@interface AInvoker ()

@property (nonatomic, strong) ACommand *command;

@end

@implementation AInvoker

- (void)updateCommand:(ACommand *)command
{
    _command = command;
}

- (void)action
{
    [_command execute];
}

@end
