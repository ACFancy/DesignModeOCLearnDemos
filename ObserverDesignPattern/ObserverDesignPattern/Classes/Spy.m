//
//  Spy.m
//  ObserverDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Spy.h"
#import "HanFeiZi.h"
#import "LiSi.h"

@interface Spy ()

@property (nonatomic, strong) HanFeiZi *hanfeizi;
@property (nonatomic, strong) LiSi *lisi;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSPort *emptyPort;

@end

@implementation Spy

- (instancetype)initWithHan:(HanFeiZi *)hanfeizi
                       lisi:(LiSi *)lisi
                       type:(NSString *)type
{
    if (self = [super init]) {
        _hanfeizi = hanfeizi;
        _lisi = lisi;
        _type = type;
    }
    return self;
}

#pragma mark - Override
- (void)start
{
    [super start];
}

- (void)cancel
{
    NSLog(@"%p", self);
//    [self stopThread];
    [self performSelector:@selector(stopThread) onThread:self withObject:nil waitUntilDone:NO];
    [super cancel];
}

- (void)main
{
    NSLog(@"DOG");
    [self startThread];
    while (true) {
        if (self.isCancelled) {
            break;
        }
//        if ([_type isEqualToString:@"breakfast"]) {
//            if (_hanfeizi.isHavingBreakFast) {
//                [_lisi update:@"HanFeizi meat"];
//                _hanfeizi.isHavingBreakFast = NO;
//            }
//        } else {
//            if (_hanfeizi.isHavingFun) {
//                [_lisi update:@"HanFeizi fun"];
//                _hanfeizi.isHavingFun = NO;
//            }
//        }
        if (!self.isCancelled && _hanfeizi.isHavingBreakFast) {
            [_lisi update:@"HanFeizi meat"];
            _hanfeizi.isHavingBreakFast = NO;
        }

        if (!self.isCancelled && _hanfeizi.isHavingFun) {
            [_lisi update:@"HanFeizi fun"];
            _hanfeizi.isHavingFun = NO;
        }
    }
}

#pragma mark - Private Methods
- (void)startThread
{
    @autoreleasepool {
        NSLog(@"%p", [NSThread currentThread]);
        if (!self.emptyPort) {
            self.emptyPort = [NSMachPort port];
        }
        NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
        [runLoop addPort:self.emptyPort forMode:NSDefaultRunLoopMode];
        [runLoop runMode:NSRunLoopCommonModes beforeDate:[NSDate distantFuture]];
    }
}

- (void)stopThread
{
    @autoreleasepool {
        NSLog(@"%p", [NSThread currentThread]);
        if (self.emptyPort) {
            NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
            [runLoop removePort:self.emptyPort forMode:NSDefaultRunLoopMode];
            self.emptyPort = nil;
            CFRunLoopStop(CFRunLoopGetCurrent());
        }
    }
}

@end
