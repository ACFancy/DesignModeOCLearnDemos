//
//  Son.m
//  ChainOfResponsibilityDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Son.h"
#import "IWomen.h"

@implementation Son

- (void)handleMessage:(id<IWomen>)women
{
    NSLog(@"%s-%@", __FUNCTION__, [women fetchRequest]);
    NSLog(@"%s-Agree", __FUNCTION__);
}

@end
