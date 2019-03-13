//
//  AbstractCmd.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AbstractCmd.h"
#import "ZipReceiver.h"
#import "GzipReceiver.h"

@implementation AbstractCmd

- (instancetype)init
{
    if (self = [super init]) {
        _zip = [ZipReceiver new];
        _gzip = [GzipReceiver new];
    }
    return self;
}

- (BOOL)executeWithSource:(NSString *)source to:(NSString *)to
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
