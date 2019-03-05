//
//  ILift.h
//  StateDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef ILift_h
#define ILift_h

static NSInteger const OPENING_STATE = 1;  //敞门状态
static NSInteger const CLOSING_STATE = 2;  //闭门状态
static NSInteger const RUNNING_STATE = 3;  //运行状态
static NSInteger const STOPPING_STATE = 4; //停止状态

@protocol ILift <NSObject>

- (void)setState:(NSInteger)state;

- (void)open;

- (void)close;

- (void)run;

- (void)stop;

@end

#endif /* ILift_h */
