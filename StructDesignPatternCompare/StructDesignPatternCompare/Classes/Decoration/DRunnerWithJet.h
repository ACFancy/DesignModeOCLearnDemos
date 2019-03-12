//
//  DRunnerWithJet.h
//  StructDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IDRunner.h"

NS_ASSUME_NONNULL_BEGIN

@interface DRunnerWithJet : NSObject <IDRunner>

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithRunner:(id<IDRunner>)runner;

@end

NS_ASSUME_NONNULL_END
