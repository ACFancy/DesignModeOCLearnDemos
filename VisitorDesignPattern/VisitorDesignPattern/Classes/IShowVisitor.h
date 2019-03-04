//
//  IShowVisitor.h
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef IShowVisitor_h
#define IShowVisitor_h
#import "IVisitor.h"

@protocol IShowVisitor <IVisitor>

- (void)report;

@end

#endif /* IShowVisitor_h */
