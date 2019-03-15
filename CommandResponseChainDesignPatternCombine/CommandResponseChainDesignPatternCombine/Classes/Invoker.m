//
//  Invoker.m
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Invoker.h"
#import "CommandVO.h"
#import "CommandEnum.h"
#import "Command.h"

@implementation Invoker

- (NSString *)exec:(NSString *)commandStr
{
    NSString *result;
    CommandVO *vo = [[CommandVO alloc] initWithCommandStr:commandStr];
    
    if ([[CommandEnum fetchNames] containsObject:[vo commandName]]) {
        NSString *className = [CommandEnum valueOf:[vo commandName]];
        Command *command;
        @try {
            command = (Command *)[NSClassFromString(className) new];
            result = [command execute:vo];
        } @catch (NSException *exception) {
            
        }
    } else {
        result = @"无法执行命令，请检查命令格式";
    }
    return result;
}

@end
