//
//  SendMail.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import "SendMail.h"
#import "BMailTemplate.h"

@implementation SendMail

- (void)sendMail
{
    [self.m add:@"Received: (sendmail); 7 Nov 2009 04:14:44 +0100"];
    [super sendMail];
}

@end
