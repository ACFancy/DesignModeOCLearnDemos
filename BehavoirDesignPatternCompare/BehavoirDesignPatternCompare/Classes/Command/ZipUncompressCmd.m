//
//  ZipUncompressCmd.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ZipUncompressCmd.h"

@implementation ZipUncompressCmd

- (BOOL)executeWithSource:(NSString *)source to:(NSString *)to
{
    return [self.zip uncompressWithSource:source to:to];
}

@end
