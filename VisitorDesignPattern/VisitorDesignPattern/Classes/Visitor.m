//
//  Visitor.m
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Visitor.h"
#import "CommonEmployee.h"
#import "Manager.h"

static NSInteger const MANAGER_COEFFICIENT = 5;
static NSInteger const COMMONEMPLOYEE_COEFFICIENT = 2;

@interface Visitor ()

@property (nonatomic, assign) NSInteger commonTotalSalary;
@property (nonatomic, assign) NSInteger managerTotalSalary;

@end

@implementation Visitor

- (void)visitWithManager:(Manager *)manager
{
    NSLog(@"%@", [self fetchManagerInfo:manager]);
}

- (void)visitWithCommonEmployee:(CommonEmployee *)commonEmployee
{
    NSLog(@"%@", [self fetchCommonEmployeeInfo:commonEmployee]);
}

- (NSInteger)fetchTotalSalary
{
    return (self.commonTotalSalary + self.managerTotalSalary);
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

- (NSString *)fetchManagerInfo:(Manager *)manager
{
    NSMutableString *str = [self fetchBasicInfo:manager].mutableCopy;
    [str appendFormat:@"业绩：%@\t", [manager performance]];
    [self calManagerSalary:[manager salary]];
    return str.copy;
}

- (NSString *)fetchCommonEmployeeInfo:(CommonEmployee *)employee
{
    NSMutableString *str = [self fetchBasicInfo:employee].mutableCopy;
    [str appendFormat:@"工作：%@\t", [employee job]];
    [self calCommonSalary:[employee salary]];
    return str.copy;
}

- (void)calManagerSalary:(NSInteger)salary
{
    self.managerTotalSalary += (salary * MANAGER_COEFFICIENT);
}

- (void)calCommonSalary:(NSInteger)salary
{
    self.commonTotalSalary += (salary * COMMONEMPLOYEE_COEFFICIENT);
}

@end
