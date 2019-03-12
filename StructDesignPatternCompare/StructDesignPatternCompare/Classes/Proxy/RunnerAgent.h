//
//  RunnerAgent.h
//  StructDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IRunner.h"

NS_ASSUME_NONNULL_BEGIN

//代理人
@interface RunnerAgent : NSObject <IRunner>

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithRunner:(id<IRunner>)runner;

@end

NS_ASSUME_NONNULL_END
