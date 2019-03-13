//
//  DnsServer.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/13.
//  Copyright © 2019年 User. All rights reserved.
//

#import "DnsServer.h"
#import "Recorder.h"

@interface DnsServer ()

@property (nonatomic, strong) DnsServer *upperServer;

@end

@implementation DnsServer

#pragma mark - Public Methods
- (Recorder *)resolve:(NSString *)domain
{
    Recorder *recorder;
    if ([self isLocal:domain]) {
        recorder = [self echo:domain];
    } else {
        recorder = [_upperServer resolve:domain];
    }
    return recorder;
}

- (void)setUpperServer:(DnsServer *)upperServer
{
    _upperServer = upperServer;
}

- (BOOL)isLocal:(NSString *)domain
{
     @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Mus be override in subclass" userInfo:nil];
}

- (Recorder *)echo:(NSString *)domain
{
    Recorder *recorder = [Recorder new];
    [recorder setIp:[self genIPAddress]];
    [recorder setDomain:domain];
    return recorder;
}

#pragma mark - Private Methods
- (NSString *)genIPAddress
{
    return  [NSString stringWithFormat:@"%u.%u.%u.%u",arc4random_uniform(255),arc4random_uniform(255),arc4random_uniform(255),arc4random_uniform(255)];
}


@end
