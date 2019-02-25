//
//  AdvTemplate.m
//  ProtoTypeDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AdvTemplate.h"

@interface AdvTemplate ()

@property (nonatomic, strong) NSString *advSubject;
@property (nonatomic, strong) NSString *advContext;

@end

@implementation AdvTemplate

#pragma mark - init Methods
- (instancetype)init
{
    if (self = [super init]) {
        _advSubject = @"XX银行国庆信用卡抽奖活动";
        _advContext = @"国庆抽奖活动通知：只要刷卡就送你一百万！...";
    }
    return self;
}

#pragma mark - Public Methods
- (NSString *)fetchAdvSubject
{
    return _advSubject;
}

- (NSString *)fetchAdvContext
{
    return _advContext;
}

@end
