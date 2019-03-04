//
//  ITotalVisitor.h
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef ITotalVisitor_h
#define ITotalVisitor_h
#import "IVisitor.h"

@protocol ITotalVisitor <IVisitor>

- (void)totalSalary;

@end

#endif /* ITotalVisitor_h */
