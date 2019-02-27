//
//  OuterUserHomeInfo.m
//  AdapterDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "OuterUserHomeInfo.h"

@implementation OuterUserHomeInfo

- (NSDictionary *)fetchUserHomeInfo
{
    NSMutableDictionary *homeInfo = [NSMutableDictionary dictionary];
    homeInfo[@"homeTelNumber"] = @"55555555";
    homeInfo[@"homeAddress"] = @"Hotel";
    return homeInfo.copy;
}

@end
