//
//  HRFacade.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import "HRFacade.h"
#import "SalaryProvider.h"
#import "Attendance.h"

@interface HRFacade ()

@property (nonatomic, strong) SalaryProvider *salaryProvider;
@property (nonatomic, strong) Attendance *attendance;

@end

@implementation HRFacade

- (instancetype)init
{
    if (self = [super init]) {
        _salaryProvider = [SalaryProvider new];
        _attendance = [Attendance new];
    }
    return self;
}

- (NSInteger)querySalary:(NSString *)name date:(NSDate *)date
{
    return [_salaryProvider totalSalary];
}

- (NSInteger)queryWorksDays:(NSString *)name
{
    return [_attendance fetchWorksDays];
}

@end
