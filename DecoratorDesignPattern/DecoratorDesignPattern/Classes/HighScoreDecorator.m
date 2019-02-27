//
//  HighScoreDecorator.m
//  DecoratorDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "HighScoreDecorator.h"

@implementation HighScoreDecorator

- (instancetype)initWithReport:(SchoolReport *)report
{
    self = [super initWithReport:report];
    return self;
}

#pragma mark - Override
- (void)report
{
    [self reportHightScore];
    [super report];
}

#pragma mark - Private Methods
- (void)reportHightScore
{
    NSLog(@"这次考试语文最高是75，数学是78，自然是80");
}


@end
