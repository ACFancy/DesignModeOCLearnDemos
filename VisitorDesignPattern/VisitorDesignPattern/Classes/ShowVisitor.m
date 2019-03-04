//
//  ShowVisitor.m
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ShowVisitor.h"
#import "CommonEmployee.h"
#import "Manager.h"

@interface ShowVisitor ()

@property (nonatomic, strong) NSString *info;

@end

@implementation ShowVisitor

- (instancetype)init
{
    if (self = [super init]) {
        _info = @"";
    }
    return self;
}

- (void)report
{
    NSLog(@"%@", self.info);
}

- (void)visitWithManager:(Manager *)manager
{
    self.info = [NSString stringWithFormat:@"%@%@\n", self.info, [self fetchBasicInfo:manager]];
}

- (void)visitWithCommonEmployee:(CommonEmployee *)commonEmployee
{
    self.info = [NSString stringWithFormat:@"%@%@\n", self.info, [self fetchBasicInfo:commonEmployee]];
}

#pragma mark - Private Methods
- (NSString *)fetchBasicInfo:(Employee *)employee
{
    NSMutableString *str = [NSMutableString string];
    [str appendFormat:@"姓名：%@\t", employee.name];
    [str appendFormat:@"性别：%@\t", (employee.sex == FEMALE ? @"女" : @"男")];
    [str appendFormat:@"薪水：%ld\t", employee.salary];
    
    return str.copy;
}

@end
