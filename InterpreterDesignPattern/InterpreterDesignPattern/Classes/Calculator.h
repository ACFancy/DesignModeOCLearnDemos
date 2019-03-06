//
//  Calculator.h
//  InterpreterDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

- (instancetype)initWithExpStr:(NSString *)expStr;

- (NSInteger)run:(NSDictionary<NSString *, NSNumber *> *)var;

@end

NS_ASSUME_NONNULL_END
