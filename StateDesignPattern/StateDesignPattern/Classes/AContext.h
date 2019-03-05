//
//  Context.h
//  StateDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

@class OpenningState, ClosingState, RunningState, StoppingState, LiftState;

NS_ASSUME_NONNULL_BEGIN

//Context是一个环境角色，它的作用是串联各个状态的过渡，在LiftSate抽象类中我们定义并把这个环境角色聚合进来，并传递到子类，也就是4个具体的实现类中自己根据环境来决定如何进行状态的过渡。
@interface AContext : NSObject

+ (OpenningState *)openningState;

+ (ClosingState *)closingState;

+ (RunningState *)runningState;

+ (StoppingState *)stoppingState;

- (LiftState *)liftState;

- (void)setLiftState:(LiftState *)liftState;

- (void)open;

- (void)close;

- (void)run;

- (void)stop;

@end

NS_ASSUME_NONNULL_END
