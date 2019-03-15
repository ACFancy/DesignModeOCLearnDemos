//
//  Command.h
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

/*
 Command抽象类有两个作用：一是定义命令的执行方法，二是负责命令族（责任链）的建立
 其中buildChain方法负责建立一个责任链，它通过接收一个抽象的命令族类就可以建立一条命令解析链，如传递AbstarctLS类就可以建立一条解析ls命令族的责任链
 */

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class CommandVO, CommandName;
@interface Command : NSObject

- (NSString *)execute:(CommandVO *)vo;

- (NSArray<__kindof CommandName *> *)buildChain:(Class)abstractClass;

@end

NS_ASSUME_NONNULL_END
