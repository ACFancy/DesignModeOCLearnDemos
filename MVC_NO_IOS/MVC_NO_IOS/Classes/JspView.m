//
//  JspView.m
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import "JspView.h"
#import "AbsLangData.h"

@implementation JspView

#pragma mark - Override
- (void)assemble
{
    NSDictionary *langMap = [[self langData] getItems];
    for (NSString *key in langMap) {
        /*
         * 直接替换文件中的语言条目
         *
         */
    }
}

@end
