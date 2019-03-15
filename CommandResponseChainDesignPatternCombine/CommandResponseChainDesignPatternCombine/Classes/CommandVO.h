//
//  CommandVO.h
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXTERN NSString *const DIVIDE_FLAG;
FOUNDATION_EXTERN NSString *const PREFIX;

///是命令的值对象，它把一个命令解析为命令名、选项、操作数，例如"ls-l/usr"命令分别解析为getCommandName、getParam、getData三个方法的返回值。
@interface CommandVO : NSObject

- (instancetype)initWithCommandStr:(NSString *)commandStr;

- (NSString *)commandName;

- (NSMutableArray *)fetchParam;

- (NSMutableArray *)fetchData;

- (NSString *)formatData;

@end

NS_ASSUME_NONNULL_END
