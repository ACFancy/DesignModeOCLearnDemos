//
//  Manager.h
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Employee.h"

NS_ASSUME_NONNULL_BEGIN

@interface Manager : Employee

- (void)setPerformance:(NSString *)performance;

- (NSString *)performance;

@end

NS_ASSUME_NONNULL_END
