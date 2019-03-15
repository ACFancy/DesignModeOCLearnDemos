//
//  HtmlMail.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import "HtmlMail.h"

@implementation HtmlMail

- (NSString *)context
{
    NSMutableString *contex = [NSMutableString stringWithFormat:@"\nContent-Type:multipart/mixed;charset=GB2312\n%@", [super context]];
    [contex appendString:@"\n 超文本格式"];
    return contex.copy;
}

@end
