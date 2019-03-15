//
//  CommandName.h
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

///抽象命令名类
//构建责任链. Handler
@class CommandVO;
@interface CommandName : NSObject

- (void)setNext:(CommandName *)next;

- (NSString *)fetchOperateParam;

- (NSString *)echo:(CommandVO *)vo;

- (NSString *)handleMessage:(CommandVO *)vo;

@end

NS_ASSUME_NONNULL_END
