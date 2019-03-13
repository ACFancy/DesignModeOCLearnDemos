//
//  ZipCompressCmd.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ZipCompressCmd.h"

@implementation ZipCompressCmd

- (BOOL)executeWithSource:(NSString *)source to:(NSString *)to
{
    return [self.zip compressWithSource:source to:to];
}

@end
