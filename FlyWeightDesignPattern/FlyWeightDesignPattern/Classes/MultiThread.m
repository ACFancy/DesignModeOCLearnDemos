//
//  MultiThread.m
//  FlyWeightDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import "MultiThread.h"
#import "SignInfo.h"

@interface MultiThread ()

@property (nonatomic, strong) SignInfo *signInfo;

@end

@implementation MultiThread

- (instancetype)initWithInfo:(SignInfo *)signInfo
{
    if (self = [super init]) {
        _signInfo = signInfo;
    }
    return self;
}

- (void)main
{
    if (![_signInfo.iD isEqualToString:_signInfo.location]) {
        NSLog(@"编号：%@\n考试地址：%@\n线程不安全了！", _signInfo.iD, _signInfo.location);
    }
}

@end
