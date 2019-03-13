//
//  HumanState.h
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/13.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Human;
@interface HumanState : NSObject

@property (nonatomic, weak) Human *human;

- (void)work;

@end

NS_ASSUME_NONNULL_END
