//
//  ACommand.m
//  CommandDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ACommand.h"

@implementation ACommand

- (instancetype)initWithCReceiver:(AReceiver *)receiver
{
    if (self = [super init]) {
        _cReceiver = receiver;
    }
    return self;
}

- (void)execute
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
