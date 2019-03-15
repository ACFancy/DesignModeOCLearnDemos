//
//  BTextMail.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import "BTextMail.h"

@implementation BTextMail

- (NSString *)context
{
    NSMutableString *contex = [NSMutableString stringWithFormat:@"\nContent-Type:text/plain;charset=GB2312\n%@", [super context]];
    [contex appendString:@"\n 文本格式"];
    return contex.copy;
}

@end
