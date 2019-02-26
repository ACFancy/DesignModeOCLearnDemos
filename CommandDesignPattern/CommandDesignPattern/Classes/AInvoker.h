//
//  AInvoker.h
//  CommandDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class ACommand;
//调用者Invoker类,调用者就像是一个受气包，不管什么命令，都要接收、执行
@interface AInvoker : NSObject

//受气包，接受命令
- (void)updateCommand:(ACommand *)command;

//执行命令
- (void)action;

@end

NS_ASSUME_NONNULL_END
