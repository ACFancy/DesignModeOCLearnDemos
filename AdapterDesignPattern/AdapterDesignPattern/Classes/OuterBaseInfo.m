//
//  OuterBaseInfo.m
//  AdapterDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "OuterBaseInfo.h"

@implementation OuterBaseInfo

- (NSDictionary *)fetchUserBaseInfo
{
    NSMutableDictionary *baseInfo = [NSMutableDictionary dictionary];
    baseInfo[@"userName"] = @"xxx";
    baseInfo[@"mobileNumber"] = @"188888888";
    return baseInfo.copy;
}

@end
