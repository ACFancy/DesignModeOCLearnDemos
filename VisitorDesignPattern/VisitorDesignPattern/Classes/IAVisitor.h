//
//  IAVisitor.h
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef IAVisitor_h
#define IAVisitor_h

@class ConcreteElement1, ConcreteElement2;
@protocol IAVisitor <NSObject>

- (void)visitWithElement1:(ConcreteElement1 *)element1;

- (void)visitWithElement2:(ConcreteElement2 *)element2;

@end

#endif /* IAVisitor_h */
