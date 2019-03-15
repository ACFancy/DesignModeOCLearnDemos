//
//  CommandEnum.h
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

///命令配置这个去映射对应处理类的类名
@interface CommandEnum : NSObject

+ (NSString *)valueOf:(NSString *)commandName;

+ (NSArray *)fetchNames;

@end

NS_ASSUME_NONNULL_END
