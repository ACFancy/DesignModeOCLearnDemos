//
//  Invoker.h
//  CommandDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Command;
@interface Invoker : NSObject

- (void)updateCommand:(Command *)command;

- (void)action;

@end

NS_ASSUME_NONNULL_END
