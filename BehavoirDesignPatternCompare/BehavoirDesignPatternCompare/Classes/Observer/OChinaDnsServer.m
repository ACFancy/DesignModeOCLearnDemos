//
//  OChineDnsServer.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/13.
//  Copyright © 2019年 User. All rights reserved.
//

#import "OChinaDnsServer.h"
#import "ORecorder.h"

@implementation OChinaDnsServer

#pragma mark - Override
- (void)sign:(ORecorder *)recorder
{
    [recorder setOwner:@"China"];
}

- (BOOL)isLocal:(ORecorder *)recorder
{
    return [recorder.domain hasSuffix:@".cn"];
}

@end
