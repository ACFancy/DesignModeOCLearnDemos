//
//  GzipCompressCmd.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import "GzipCompressCmd.h"

@implementation GzipCompressCmd

- (BOOL)executeWithSource:(NSString *)source to:(NSString *)to
{
    return [self.gzip compressWithSource:source to:to];
}

@end
