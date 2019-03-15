//
//  MailTemplate.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import "MailTemplate.h"

@implementation MailTemplate

- (instancetype)initWithFrom:(NSString *)from
                          to:(NSString *)to
                     subject:(NSString *)subject
                     context:(NSString *)context
{
    if (self = [super init]) {
        self.from = from;
        self.to = to;
        self.subject = subject;
        self.context = context;
    }
    return self;
}

@end
