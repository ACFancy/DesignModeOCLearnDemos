//
//  AddExpression.m
//  InterpreterDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AddExpression.h"

@implementation AddExpression

- (NSInteger)interpreter:(NSDictionary<NSString *,NSNumber *> *)var
{
    return [self.left interpreter:var] + [self.right interpreter:var];
}

@end
