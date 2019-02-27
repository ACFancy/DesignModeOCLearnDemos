//
//  SchoolReport.m
//  DecoratorDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "SchoolReport.h"

@implementation SchoolReport

- (void)report
{
    @throw [NSException exceptionWithName:@"ErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

- (void)sign:(NSString *)name
{
    @throw [NSException exceptionWithName:@"ErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
