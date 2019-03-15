//
//  Command.m
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Command.h"
#import "ClassUtils.h"
#import "CommandName.h"

@implementation Command

- (NSString *)execute:(CommandVO *)vo
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

- (NSArray<__kindof CommandName *> *)buildChain:(Class)abstractClass
{
    NSArray *classes = [ClassUtils fetchSonClass:abstractClass];
    NSMutableArray *commandNameList = [NSMutableArray array];
    
    for (Class c in classes) {
        CommandName *commandName;
        @try {
            commandName = (CommandName *)[c new];
        } @catch (NSException *exception) {
            continue;
        }
        if (commandNameList.count > 0) {
            [commandNameList.lastObject setNext:commandName];
        }
        
        [commandNameList addObject:commandName];
    }
    
    return commandNameList.copy;
}

@end
