//
//  ASContext.h
//  StrategyDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ICalculator.h"

NS_ASSUME_NONNULL_BEGIN

//方案三
@interface ASContext : NSObject

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)initWithCalculator:(id<ICalculator>)calculator;

- (NSInteger)execWithA:(NSInteger)a
                     b:(NSInteger)b
                symbol:(NSString *)symbol;

@end

NS_ASSUME_NONNULL_END
