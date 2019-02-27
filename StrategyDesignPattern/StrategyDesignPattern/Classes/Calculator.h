//
//  Calculator.h
//  StrategyDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

//方案一
- (NSInteger)execWithA:(NSInteger)a
                     b:(NSInteger)b
                symbol:(NSString *)symbol;

//方案二
- (NSInteger)exec2WithA:(NSInteger)a
                      b:(NSInteger)b
                 symbol:(NSString *)symbol;

@end

NS_ASSUME_NONNULL_END
