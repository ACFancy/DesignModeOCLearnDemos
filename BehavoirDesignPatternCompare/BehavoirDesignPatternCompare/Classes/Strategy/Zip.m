//
//  Zip.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Zip.h"

@implementation Zip

- (BOOL)compressWithSource:(NSString *)source to:(NSString *)to
{
    NSLog(@"%s %@ %@", __FUNCTION__, source, to);
    return YES;
}

- (BOOL)uncompressWithSource:(NSString *)source to:(NSString *)to
{
    NSLog(@"%s %@ %@", __FUNCTION__, source, to);
    return YES;
}

@end
