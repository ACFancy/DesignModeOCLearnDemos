//
//  IOuterUserInfo.m
//  AdapterDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "IOuterUserInfo.h"

@interface IOuterUserInfo ()

@property (nonatomic, strong) id<IOuterUserBaseInfo> outerBaseInfo;
@property (nonatomic, strong) id<IOuterUserHomeInfo> outeHomeInfo;
@property (nonatomic, strong) id<IOuterOfficeInfo> outerOfficeInfo;

@property (nonatomic, strong) NSDictionary *baseInfo;
@property (nonatomic, strong) NSDictionary *homeInfo;
@property (nonatomic, strong) NSDictionary *officeInfo;

@end

@implementation IOuterUserInfo

- (instancetype)initWithOuterBaseInfo:(id<IOuterUserBaseInfo>)outerBaseInfo
                         outeHomeInfo:(id<IOuterUserHomeInfo>)outeHomeInfo
                      outerOfficeInfo:(id<IOuterOfficeInfo>)outerOfficeInfo
{
    if (self = [super init]) {
        _outerBaseInfo = outerBaseInfo;
        _outeHomeInfo = outeHomeInfo;
        _outerOfficeInfo = outerOfficeInfo;
        
        _baseInfo = [_outerBaseInfo fetchUserBaseInfo];
        _homeInfo = [_outeHomeInfo fetchUserHomeInfo];
        _officeInfo = [_outerOfficeInfo fetchUserOfficeInfo];
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
