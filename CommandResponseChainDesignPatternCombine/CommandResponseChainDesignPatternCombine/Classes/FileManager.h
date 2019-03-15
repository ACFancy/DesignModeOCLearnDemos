//
//  FileManager.h
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 文件管理类
/*
 以上都是比较简单的方法，大家有兴趣可以自己实现一下，以下提供3种思路：
 
 ● 通过java.io.File类自己封装出类似UNIX的返回格式。
 
 ● 通过java.lang.Runtime类的exec方法执行dos的dir命令，产生类似的ls结果。
 
 ● 通过JNI（Java Native Interface）来调用与操作系统有关的动态链接库，当然前提是需要自己写一个动态链接库文件
 */
@interface FileManager : NSObject

+ (NSString *)ls:(NSString *)path;

+ (NSString *)ls_l:(NSString *)path;

+ (NSString *)ls_a:(NSString *)path;

@end

NS_ASSUME_NONNULL_END
