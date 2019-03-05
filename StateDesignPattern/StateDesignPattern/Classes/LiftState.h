//
//  LiftState.h
//  StateDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class AContext;
@interface LiftState : NSObject

@property (nonatomic, strong) AContext *aContext;

//- (AContext *)aContext;
//
//- (void)setAContext:(AContext *)aContext;

- (void)open;

- (void)close;

- (void)run;

- (void)stop;

@end

NS_ASSUME_NONNULL_END
