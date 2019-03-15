//
//  SalaryProvider.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import "SalaryProvider.h"
#import "BasicSalary.h"
#import "Bonus.h"
#import "FTax.h"
#import "Performamce.h"

//组合
@interface SalaryProvider ()

@property (nonatomic, strong) BasicSalary *basicSalary;
@property (nonatomic, strong) Bonus *bonus;
@property (nonatomic, strong) Performamce *pef;
@property (nonatomic, strong) FTax *tax;

@end

@implementation SalaryProvider

- (instancetype)init
{
    if (self = [super init]) {
        _basicSalary = [BasicSalary new];
        _bonus = [Bonus new];
        _pef = [Performamce new];
        _tax = [FTax new];
    }
    return self;
}

- (NSInteger)totalSalary
{
    return ([_basicSalary fetchBasicSalary] +
            [_bonus fetchBonus] +
            [_pef fetchPerformance] -
            [_tax fetchTax]);
}

@end
