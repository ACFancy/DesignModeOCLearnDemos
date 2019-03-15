//
//  Postfix.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Postfix.h"
#import "BMailTemplate.h"

@implementation Postfix

- (void)sendMail
{
    NSString *context = @"Received: from XXXX (unknown [xxx.xxx.xxx.xxx]) by aaa.aaa.com (Postfix) with ESMTP id 8DBCD172B8\n";
    [self.m add:context];
    [super sendMail];
}

@end
