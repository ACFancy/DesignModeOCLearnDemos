//
//  Invoker.h
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractCmd.h"

NS_ASSUME_NONNULL_BEGIN

// 调用者
@interface Invoker : NSObject

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithCmd:(AbstractCmd *)command;

- (BOOL)executeWithSource:(NSString *)source to:(NSString *)to;

@end

NS_ASSUME_NONNULL_END
