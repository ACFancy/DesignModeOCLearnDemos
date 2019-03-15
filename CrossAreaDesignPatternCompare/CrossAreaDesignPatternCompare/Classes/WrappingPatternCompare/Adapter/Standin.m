//
//  Standin.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Standin.h"

@interface Standin ()

@property (nonatomic, strong) id<IActor> actor;

@end

@implementation Standin

- (instancetype)initWithActor:(id<IActor>)actor
{
    if (self = [super init]) {
        _actor = actor;
    }
    return self;
}

- (void)act:(NSString *)context
{
    [_actor playact:context];
}


@end
