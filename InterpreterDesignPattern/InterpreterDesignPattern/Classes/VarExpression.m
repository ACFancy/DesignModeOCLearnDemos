//
//  VarExpression.m
//  InterpreterDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import "VarExpression.h"

@interface VarExpression ()

@property (nonatomic, strong) NSString *key;

@end

@implementation VarExpression

- (instancetype)initWithKey:(NSString *)key
{
    if (self = [super init]) {
        _key = key;
    }
    return self;
}

- (NSInteger)interpreter:(NSDictionary<NSString *, NSNumber *> *)var
{
    if (var && _key != nil && [var.allKeys containsObject:_key]) {
        return [var[_key] integerValue];
    }
    return 0;
}

@end
