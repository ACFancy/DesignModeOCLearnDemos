//
//  SugarFourthGradeSchoolReport.m
//  DecoratorDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "SugarFourthGradeSchoolReport.h"

@implementation SugarFourthGradeSchoolReport


#pragma mark - Override
- (void)report
{
    [self reportHightScore];
    [super report];
    [self reportSort];
}

#pragma mark - Private Methods
//首先要定义你要美化的方法，先给老爸说学校最高成绩
- (void)reportHightScore
{
    NSLog(@"这次考试语文最高是75，数学是78，自然是80");
}

//在老爸看完毕成绩单后，我再汇报学校的排名情况
- (void)reportSort
{
    NSLog(@"我是排名第38名...");
}


@end
