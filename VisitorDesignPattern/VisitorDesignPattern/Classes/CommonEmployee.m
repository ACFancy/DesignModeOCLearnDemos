//
//  CommonEmployee.m
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "CommonEmployee.h"

@interface CommonEmployee ()

@property (nonatomic, strong) NSString *job;

@end

@implementation CommonEmployee

- (NSString *)fetchOtherInfo
{
    return [NSString stringWithFormat:@"工作：%@\t", self.job];
}

- (void)accept:(id<IVisitor>)visitor
{
    [visitor visitWithCommonEmployee:self];
}

@end
