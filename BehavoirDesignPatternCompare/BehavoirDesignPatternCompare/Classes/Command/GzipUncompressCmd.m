//
//  GzipUncompressCmd.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import "GzipUncompressCmd.h"

@implementation GzipUncompressCmd

- (BOOL)executeWithSource:(NSString *)source to:(NSString *)to
{
    return [self.gzip uncompressWithSource:source to:to];
}

@end
