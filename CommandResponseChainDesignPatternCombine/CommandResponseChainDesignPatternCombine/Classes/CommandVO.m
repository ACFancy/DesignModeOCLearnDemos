//
//  CommandVO.m
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "CommandVO.h"

NSString *const DIVIDE_FLAG = @" ";
NSString *const PREFIX = @"-";

@interface CommandVO ()

@property (nonatomic, strong) NSString *commandName;
@property (nonatomic, strong) NSMutableArray *paramList;
@property (nonatomic, strong) NSMutableArray *dataList;

@end

@implementation CommandVO

- (instancetype)initWithCommandStr:(NSString *)commandStr
{
    if (self = [super init]) {
        _commandName = @"";
        _paramList = [NSMutableArray array];
        _dataList = [NSMutableArray array];
        
        if (commandStr != nil && commandStr.length != 0) {
          NSArray<NSString *> *complexStr = [commandStr componentsSeparatedByString:DIVIDE_FLAG];
            _commandName = complexStr.firstObject;
            for (NSInteger i = 1; i < complexStr.count; i++) {
                NSString *str = complexStr[i];
                if ([str hasPrefix:PREFIX]) {
                    [_paramList addObject:[[str stringByReplacingOccurrencesOfString:PREFIX withString:@""] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]];
                } else {
                    [_dataList addObject:[str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]];
                }
            }
        } else {
            NSLog(@"命令解析失败，必须传递一个命令才能执行！");
        }
    }
    return self;
}

- (NSMutableArray *)fetchParam
{
    if (self.paramList.count == 0) {
        [self.paramList addObject:@""];
    }
    return [NSMutableArray arrayWithArray:[[NSSet setWithArray:self.paramList.copy] allObjects]];
}

- (NSMutableArray *)fetchData
{
    return self.dataList.mutableCopy;
}

- (NSString *)formatData
{
    return nil;
}

@end
