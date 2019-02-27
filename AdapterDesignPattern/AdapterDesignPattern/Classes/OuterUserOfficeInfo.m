//
//  OuterUserOfficeInfo.m
//  AdapterDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "OuterUserOfficeInfo.h"

@implementation OuterUserOfficeInfo

- (NSDictionary *)fetchUserOfficeInfo
{
    NSMutableDictionary *officeInfo = [NSMutableDictionary dictionary];
    officeInfo[@"jobPosition"] = @"Boss";
    officeInfo[@"officeTelNumber"] = @"99999";
    return officeInfo.copy;
}

@end
