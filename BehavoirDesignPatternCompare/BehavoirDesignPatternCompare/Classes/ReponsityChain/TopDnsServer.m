//
//  TopDnsServer.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/13.
//  Copyright © 2019年 User. All rights reserved.
//

#import "TopDnsServer.h"
#import "Recorder.h"

@implementation TopDnsServer

#pragma mark - Override Methods
- (Recorder *)echo:(NSString *)domain
{
    Recorder *recorder = [super echo:domain];
    [recorder setOwner:@"World"];
    return recorder;
}

- (BOOL)isLocal:(NSString *)domain
{
    return YES;
}

@end
