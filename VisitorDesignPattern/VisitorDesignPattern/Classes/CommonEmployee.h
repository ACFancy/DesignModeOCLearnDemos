//
//  CommonEmployee.h
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Employee.h"

NS_ASSUME_NONNULL_BEGIN

@interface CommonEmployee : Employee

- (void)setJob:(NSString *)job;

- (NSString *)job;

@end

NS_ASSUME_NONNULL_END
