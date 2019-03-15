//
//  FileManager.m
//  CommandResponseChainDesignPatternCombine
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "FileManager.h"

@implementation FileManager

+ (NSString *)ls:(NSString *)path
{
    return @"file1\nfile2\nfile3\nfile4";
}

+ (NSString *)ls_l:(NSString *)path
{
    NSMutableString *str = [NSMutableString stringWithString:@"drw-rw-rw root system 1024 2009-8-20 10:23 file1\n"];
    [str appendString:@"drw-rw-rw root system 1024 2009-8-20 10:23 file2\n"];
    [str appendString:@"drw-rw-rw root system 1024 2009-8-20 10:23 file3"];
    return str.copy;
}

+ (NSString *)ls_a:(NSString *)path
{
    return @".\n..\nfile1\nfile2\nfile3";
}

@end
