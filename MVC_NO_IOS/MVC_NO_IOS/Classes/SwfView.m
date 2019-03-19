//
//  SwfView.m
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import "SwfView.h"
#import "AbsLangData.h"

@implementation SwfView

#pragma mark - Override
- (void)assemble
{
    NSDictionary *langMap = [[self langData] getItems];
    for (NSString *key in langMap) {
        /*
         * 组装一个HTTP的请求格式：
         * http://abc.com/xxx.swf?key1=value&key2=value
         */
    }
}

@end
