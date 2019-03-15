//
//  AbstracLS.h
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "CommandName.h"

NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXTERN NSString *const DEFAULT_PARAM;
FOUNDATION_EXTERN NSString *const A_PARAM;
FOUNDATION_EXTERN NSString *const L_PARAM;

/*
 是吗？怎么是个空的抽象类？是的，确实是一个空类，只定义了3个参数名称，它有两个职责：
 ● 标记ls命令族。
 ● 个性化处理。
 */
@interface AbstracLS : CommandName

@end

NS_ASSUME_NONNULL_END
