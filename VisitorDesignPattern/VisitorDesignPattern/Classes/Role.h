//
//  Role.h
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef Role_h
#define Role_h

@class AbsActor;
@protocol Role <NSObject>

- (void)accept:(AbsActor *)actor;

@end

#endif /* Role_h */
