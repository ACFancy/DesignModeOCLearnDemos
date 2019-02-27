//
//  OuterUser.m
//  AdapterDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "OuterUser.h"

@implementation OuterUser

- (NSDictionary *)fetchUserBaseInfo
{
    NSMutableDictionary *baseInfo = [NSMutableDictionary dictionary];
    baseInfo[@"userName"] = @"xxx";
    baseInfo[@"mobileNumber"] = @"188888888";
    return baseInfo.copy;
}

- (NSDictionary *)fetchUserHomeInfo
{
    NSMutableDictionary *homeInfo = [NSMutableDictionary dictionary];
    homeInfo[@"homeTelNumber"] = @"55555555";
    homeInfo[@"homeAddress"] = @"Hotel";
    return homeInfo.copy;
}

- (NSDictionary *)fetchUserOfficeInfo
{
    NSMutableDictionary *officeInfo = [NSMutableDictionary dictionary];
    officeInfo[@"jobPosition"] = @"Boss";
    officeInfo[@"officeTelNumber"] = @"99999";
    return officeInfo.copy;
}

@end
