//
//  Salary.h
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AbsColleague.h"
#import "ISalary.h"

NS_ASSUME_NONNULL_BEGIN

@interface Salary : AbsColleague <ISalary>

@end

NS_ASSUME_NONNULL_END
