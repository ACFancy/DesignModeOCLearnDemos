//
//  DiskManager.m
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "DiskManager.h"

@implementation DiskManager

+ (NSString *)df:(NSString *)path
{
    return @"/\t10485760\n/usr\t104857600\n/home\t1048576000\n";
}

+ (NSString *)df_k:(NSString *)path
{
    return @"/\t10240\n/usr\t102400\n/home\tt10240000\n";
}

+ (NSString *)df_g:(NSString *)path
{
    return @"/\t10\n/usr\t100\n/home\tt10000\n";
}

@end
