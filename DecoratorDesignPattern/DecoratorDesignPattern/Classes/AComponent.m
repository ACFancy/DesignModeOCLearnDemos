//
//  AComponent.m
//  DecoratorDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AComponent.h"

@implementation AComponent

- (void)operate
{
    @throw [NSException exceptionWithName:@"ErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
