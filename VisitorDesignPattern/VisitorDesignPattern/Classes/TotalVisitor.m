//
//  TotalVisitor.m
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "TotalVisitor.h"
#import "CommonEmployee.h"
#import "Manager.h"

static NSInteger const MANAGER_COEFFICIENT = 5;
static NSInteger const COMMONEMPLOYEE_COEFFICIENT = 2;

@interface TotalVisitor ()

@property (nonatomic, assign) NSInteger commonTotalSalary;
@property (nonatomic, assign) NSInteger managerTotalSalary;

@end

@implementation TotalVisitor

- (void)totalSalary
{
    NSLog(@"%ld", (self.commonTotalSalary + self.managerTotalSalary));
}

- (void)visitWithCommonEmployee:(CommonEmployee *)commonEmployee
{
    self.commonTotalSalary += ([commonEmployee salary] * COMMONEMPLOYEE_COEFFICIENT);
}

- (void)visitWithManager:(Manager *)manager
{
    self.managerTotalSalary += ([manager salary] * MANAGER_COEFFICIENT);
}


@end
