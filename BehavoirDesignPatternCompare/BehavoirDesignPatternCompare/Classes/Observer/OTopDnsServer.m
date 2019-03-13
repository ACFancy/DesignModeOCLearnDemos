//
//  OTopDnsServer.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/13.
//  Copyright © 2019年 User. All rights reserved.
//

#import "OTopDnsServer.h"
#import "ORecorder.h"

@implementation OTopDnsServer

#pragma mark - Override
- (void)sign:(ORecorder *)recorder
{
    [recorder setOwner:@"World"];
}

- (BOOL)isLocal:(ORecorder *)recorder
{
    return YES;
}

@end
