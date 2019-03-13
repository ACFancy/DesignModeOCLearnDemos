//
//  UncompressReceiver.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import "UncompressReceiver.h"

@implementation UncompressReceiver

- (BOOL)gzipExecWithSource:(NSString *)source to:(NSString *)to
{
    NSLog(@"Uncompress %s", __FUNCTION__);
    return YES;
}

- (BOOL)zipExecWithSource:(NSString *)source to:(NSString *)to
{
    NSLog(@"Uncompress %s", __FUNCTION__);
    return YES;
}

@end
