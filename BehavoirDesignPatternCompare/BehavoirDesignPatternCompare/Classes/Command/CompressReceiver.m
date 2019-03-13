//
//  CompressReceiver.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import "CompressReceiver.h"

@implementation CompressReceiver

- (BOOL)zipExecWithSource:(NSString *)source to:(NSString *)to
{
    NSLog(@"Compress %s", __FUNCTION__);
    return YES;
}

- (BOOL)gzipExecWithSource:(NSString *)source to:(NSString *)to
{
    NSLog(@"Compress %s", __FUNCTION__);
    return YES;
}

@end
