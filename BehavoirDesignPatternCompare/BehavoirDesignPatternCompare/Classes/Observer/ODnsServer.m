//
//  ODnsServer.m
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/13.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ODnsServer.h"
#import "ORecorder.h"

@interface ODnsServer ()

@property (nonatomic, strong) NSMutableArray *observers;

@end

@implementation ODnsServer

- (instancetype)init
{
    if (self = [super init]) {
        _observers = [NSMutableArray array];
    }
    return self;
}

#pragma mark - Public Methods

- (void)update:(id<IObserver>)arg0 arg1:(NSObject *)arg1
{
    ORecorder *recorder = (ORecorder *)arg1;
    if ([self isLocal:recorder]) {
        [recorder setIp:[self genIPAddress]];
    } else {
        [self responsFromUpperServer:recorder];
    }
    [self sign:recorder];
}

- (BOOL)isLocal:(ORecorder *)recorder
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Mus be override in subclass" userInfo:nil];
}

- (void)sign:(ORecorder *)recorder
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Mus be override in subclass" userInfo:nil];
}

- (void)setUpperServer:(ODnsServer *)upperServer
{
    [self.observers removeAllObjects];
    [self.observers addObject:upperServer];
}

#pragma mark - Private Methods
- (NSString *)genIPAddress
{
    return  [NSString stringWithFormat:@"%u.%u.%u.%u",arc4random_uniform(255),arc4random_uniform(255),arc4random_uniform(255),arc4random_uniform(255)];
}

- (void)responsFromUpperServer:(ORecorder *)recorder
{
    [self notifiObservers:recorder];
}

- (void)notifiObservers:(ORecorder *)recorder
{
    for (ODnsServer *server in self.observers) {
        [server update:server arg1:recorder];
    }
}

@end
