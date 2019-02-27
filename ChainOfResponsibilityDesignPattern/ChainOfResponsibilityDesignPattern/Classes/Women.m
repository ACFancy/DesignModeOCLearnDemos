//
//  Women.m
//  ChainOfResponsibilityDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Women.h"

@interface Women ()
/*
 * 通过一个int类型的参数来描述妇女的个人状况
 * 1--未出嫁
 * 2--出嫁
 * 3--夫死
 */
@property (nonatomic, assign) NSInteger type;

//妇女的请示
@property (nonatomic, strong) NSString *request;

@end

@implementation Women

- (instancetype)initWithType:(NSInteger)type request:(NSString *)request
{
    if (self = [super init]) {
        _type = type;
        _request = request;
    }
    return self;
}

- (NSInteger)fetchType
{
    return _type;
}

- (NSString *)fetchRequest
{
    return _request;
}

@end
