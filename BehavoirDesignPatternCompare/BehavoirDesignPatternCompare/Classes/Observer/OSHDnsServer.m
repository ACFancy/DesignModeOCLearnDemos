//
//  OSHDnsServer.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/13.
//  Copyright © 2019年 User. All rights reserved.
//

#import "OSHDnsServer.h"
#import "ORecorder.h"

@implementation OSHDnsServer

#pragma mark - Override
- (void)sign:(ORecorder *)recorder
{
    [recorder setOwner:@"ShangHai"];
}

- (BOOL)isLocal:(ORecorder *)recorder
{
    return [recorder.domain hasSuffix:@".sh.cn"];
}

@end
