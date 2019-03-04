//
//  Employee.m
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Employee.h"

NSInteger const MALE = 0;
NSInteger const FEMALE = 1;

@interface Employee ()

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger salary;
@property (nonatomic, assign) NSInteger sex;

@end

@implementation Employee

#pragma mark - Public Methods
- (void)report
{
    NSMutableString *str = [NSMutableString string];
    [str appendFormat:@"姓名：%@\t", self.name];
    [str appendFormat:@"性别：%@\t", (self.sex == FEMALE ? @"女" : @"男")];
    [str appendFormat:@"薪水：%ld\t", self.salary];
    //获取其他信息
    NSString *otherInfo = [self fetchOtherInfo];
    if (otherInfo != nil) {
        [str appendString:otherInfo];
    }
    NSLog(@"%@", str);
}

- (NSString *)fetchOtherInfo
{
    return nil;
}

- (void)accept:(id<IVisitor>)visitor
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
