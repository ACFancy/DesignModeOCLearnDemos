//
//  GzipReceiver.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import "GzipReceiver.h"

@implementation GzipReceiver

- (BOOL)compressWithSource:(NSString *)source to:(NSString *)to
{
    NSLog(@"%s Success", __FUNCTION__);
    return YES;
}

- (BOOL)uncompressWithSource:(NSString *)source to:(NSString *)to
{
    NSLog(@"%s Success", __FUNCTION__);
    return YES;
}

@end
