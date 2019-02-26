//
//  Command.m
//  CommandDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Command.h"
#import "RequirementGroup.h"
#import "PageGroup.h"
#import "CodeGroup.h"

@implementation Command

- (instancetype)init
{
    if (self = [super init]) {
        _rg = [RequirementGroup new];
        _pg = [PageGroup new];
        _cg = [CodeGroup new];
    }
    return self;
}

- (void)execute
{
    @throw [NSException exceptionWithName:@"CommandCallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
