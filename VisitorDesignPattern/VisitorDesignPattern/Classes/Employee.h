//
//  Employee.h
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IVisitor.h"

NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXTERN NSInteger const MALE;
FOUNDATION_EXTERN NSInteger const FEMALE;

@interface Employee : NSObject

#pragma mark - Getter/Setter Methods
- (NSInteger)sex;

- (void)setSex:(NSInteger)sex;

- (NSInteger)salary;

- (void)setSalary:(NSInteger)salary;

-(void)setName:(NSString *)name;

- (NSString *)name;

#pragma mark - Public Methods
- (void)report;

- (NSString *)fetchOtherInfo;

//该类的accept方法很简单，这个类就把自身传递过去，也就是让访问者访问本身这个对象
- (void)accept:(id<IVisitor>)visitor;

@end

NS_ASSUME_NONNULL_END
