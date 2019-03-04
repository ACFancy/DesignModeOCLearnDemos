//
//  AElement.m
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AElement.h"

@implementation AElement

- (void)doSomething
{
   @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

- (void)accept:(id<IAVisitor>)visitor
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
