//
//  AbsLangData.m
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import "AbsLangData.h"

@implementation AbsLangData

- (NSDictionary *)getItems
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
