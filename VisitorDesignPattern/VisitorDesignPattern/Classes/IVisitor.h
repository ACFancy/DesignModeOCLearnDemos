//
//  IVisitor.h
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef IVisitor_h
#define IVisitor_h

@class CommonEmployee, Manager;
@protocol IVisitor <NSObject>

- (void)visitWithCommonEmployee:(CommonEmployee *)commonEmployee;

- (void)visitWithManager:(Manager *)manager;

@optional
- (NSInteger)fetchTotalSalary;

@end

#endif /* IVisitor_h */
