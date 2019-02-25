//
//  Mail.m
//  ProtoTypeDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Mail.h"
#import "AdvTemplate.h"

@interface Mail ()

@end

@implementation Mail

- (instancetype)init
{
    self = [super init];
    return self;
}

- (instancetype)initWithAdvTemplate:(AdvTemplate *)advTemplate
{
    if (self = [super init]) {
        _context = [advTemplate fetchAdvContext];
        _subject = [advTemplate fetchAdvSubject];
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone
{
    return [super copyWithZone:zone];
}

@end
