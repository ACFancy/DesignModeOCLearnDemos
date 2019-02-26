//
//  AddRequirementCommand.m
//  CommandDesignPattern
//
//  Created by User on 2019/2/26.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AddRequirementCommand.h"
#import "RequirementGroup.h"
#import "PageGroup.h"
#import "CodeGroup.h"

@implementation AddRequirementCommand

//客户Client只需要发布命令，至于如何执行这个命令，是协调一个对象，还是两个对象，都不需要关心，命令模式做了一层非常好的封装。
- (void)execute
{
    //找到需求组
    [self.rg find];
    
    //增加一份需求
    [self.rg add];
    
    //页面也要增加
    [self.pg add];
    
    //功能也要增加
    [self.cg add];
    
    //给出计划
    [self.rg plan];
}

@end
