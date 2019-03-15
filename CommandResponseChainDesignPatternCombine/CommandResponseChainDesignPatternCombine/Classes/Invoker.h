//
//  Invoker.h
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Invoker : NSObject

- (NSString *)exec:(NSString *)commandStr;

@end

NS_ASSUME_NONNULL_END
