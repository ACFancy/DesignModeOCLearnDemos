//
//  ConcreteComponent.m
//  DecoratorDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ConcreteComponent.h"

@implementation ConcreteComponent

#pragma mark - Override
- (void)operate
{
    NSLog(@"%s", __FUNCTION__);
}

@end
