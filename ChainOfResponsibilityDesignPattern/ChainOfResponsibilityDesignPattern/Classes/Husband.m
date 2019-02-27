//
//  Husband.m
//  ChainOfResponsibilityDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Husband.h"
#import "IWomen.h"

@implementation Husband

- (void)handleMessage:(id<IWomen>)women
{
    NSLog(@"%s-%@", __FUNCTION__, [women fetchRequest]);
    NSLog(@"%s-Agree", __FUNCTION__);
}

@end
