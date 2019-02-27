//
//  OuterUserInfo.m
//  AdapterDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "OuterUserInfo.h"

@interface OuterUserInfo ()

@property (nonatomic, strong) NSDictionary *baseInfo;
@property (nonatomic, strong) NSDictionary *homeInfo;
@property (nonatomic, strong) NSDictionary *officeInfo;

@end

@implementation OuterUserInfo

- (instancetype)init
{
    if (self = [super init]) {
        _baseInfo = [self fetchUserBaseInfo];
        _homeInfo = [self fetchUserHomeInfo];
        _officeInfo = [self fetchUserOfficeInfo];
    }
    return self;
}

- (NSString *)fetchUserName
{
    return _baseInfo[@"userName"];
}

- (NSString *)fetchMobileNumber
{
    return _baseInfo[@"mobileNumber"];
}

- (NSString *)fetchHomeAddress
{
    return _homeInfo[@"homeAddress"];
}

- (NSString *)fetchHomeTelNumber
{
    return _homeInfo[@"homeTelNumber"];
}

- (NSString *)fetchOfficeTelNumber
{
    return _officeInfo[@"officeTelNumber"];
}

- (NSString *)fetchJobPosition
{
    return _officeInfo[@"jobPosition"];
}

@end
