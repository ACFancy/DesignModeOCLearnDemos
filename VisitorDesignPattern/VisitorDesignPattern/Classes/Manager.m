//
//  Manager.m
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Manager.h"

@interface Manager ()

@property (nonatomic, strong) NSString *performance;

@end

@implementation Manager

- (NSString *)fetchOtherInfo
{
    return [NSString stringWithFormat:@"业绩：%@\t", self.performance];
}

- (void)accept:(id<IVisitor>)visitor
{
    [visitor visitWithManager:self];
}

@end
