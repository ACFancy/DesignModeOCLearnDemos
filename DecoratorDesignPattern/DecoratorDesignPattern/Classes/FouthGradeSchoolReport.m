//
//  FouthGradeSchoolReport.m
//  DecoratorDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "FouthGradeSchoolReport.h"

@implementation FouthGradeSchoolReport

- (void)report
{
    NSLog(@"尊敬的XXX家长:");
    NSLog(@" ......");
    NSLog(@"语文 62  数学65 体育 98  自然  63");
    NSLog(@" .......");
    NSLog(@"               家长签名：       ");
}

- (void)sign:(NSString *)name
{
    NSLog(@"家长签名为：%@", name);
}

@end
