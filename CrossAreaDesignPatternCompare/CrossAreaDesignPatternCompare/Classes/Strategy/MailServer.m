//
//  MailServer.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import "MailServer.h"
#import "MailTemplate.h"

@interface MailServer ()

@property (nonatomic, strong) MailTemplate *m;

@end

@implementation MailServer

- (instancetype)initWithM:(MailTemplate *)m
{
    if (self = [super init]) {
        _m = m;
    }
    return self;
}

- (void)sendMail
{
    NSLog(@"From: %@", _m.from);
    NSLog(@"收件人: %@", _m.to);
    NSLog(@"邮件标题: %@", _m.subject);
    NSLog(@"邮件内容: %@", _m.context);
}


@end
