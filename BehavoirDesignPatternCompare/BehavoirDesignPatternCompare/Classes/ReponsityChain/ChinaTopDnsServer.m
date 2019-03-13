//
//  ChinaTopDnsServer.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/13.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ChinaTopDnsServer.h"
#import "Recorder.h"

@implementation ChinaTopDnsServer

#pragma mark - Override Methods
- (Recorder *)echo:(NSString *)domain
{
    Recorder *recorder = [super echo:domain];
    [recorder setOwner:@"China"];
    return recorder;
}

- (BOOL)isLocal:(NSString *)domain
{
    return [domain hasSuffix:@".cn"];
}

@end
