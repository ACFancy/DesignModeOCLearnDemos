//
//  Bonus.m
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Bonus.h"
#import "Attendance.h"

@interface Bonus ()

@property (nonatomic, strong) Attendance *attendance;

@end

@implementation Bonus

- (instancetype)init
{
    if (self = [super init]) {
        _attendance = [Attendance new];
    }
    return self;
}

- (NSInteger)fetchBonus
{
    NSInteger workDays = [_attendance fetchWorksDays];
    return (workDays * 1800 / 30);
}


@end
