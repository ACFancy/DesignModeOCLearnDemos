//
//  HRFacade.h
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//HR门面
@interface HRFacade : NSObject

- (NSInteger)querySalary:(NSString *)name date:(NSDate *)date;

- (NSInteger)queryWorksDays:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
