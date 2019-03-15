//
//  BMailTemplate.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import "BMailTemplate.h"

@implementation BMailTemplate

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

- (void)add:(NSString *)sendInfo
{
    self.context = [NSString stringWithFormat:@"%@%@", sendInfo, _context];
}

@end
