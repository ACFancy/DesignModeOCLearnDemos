//
//  VarExpression.h
//  InterpreterDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Expression.h"

NS_ASSUME_NONNULL_BEGIN

//变量解析器
@interface VarExpression : Expression

- (instancetype)initWithKey:(NSString *)key;

- (NSInteger)interpreter:(NSDictionary<NSString *, NSNumber *> *)var;

@end

NS_ASSUME_NONNULL_END
