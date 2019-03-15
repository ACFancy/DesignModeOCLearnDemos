//
//  DiskManager.h
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DiskManager : NSObject

+ (NSString *)df:(NSString *)path;

+ (NSString *)df_k:(NSString *)path;

+ (NSString *)df_g:(NSString *)path;

@end

NS_ASSUME_NONNULL_END
