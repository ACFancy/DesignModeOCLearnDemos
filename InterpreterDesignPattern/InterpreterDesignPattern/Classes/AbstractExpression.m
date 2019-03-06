//
//  AbstractExpression.m
//  InterpreterDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AbstractExpression.h"

@implementation AbstractExpression

- (NSObject *)interpreter:(Context *)ctx
{
   @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
