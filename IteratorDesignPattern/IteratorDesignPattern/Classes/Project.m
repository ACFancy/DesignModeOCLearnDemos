//
//  Project.m
//  IteratorDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Project.h"
#import "ProjectIterator.h"

@interface Project ()

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger num;
@property (nonatomic, assign) NSInteger cost;

@property (nonatomic, strong) NSMutableArray *projectList;

@end

@implementation Project

- (instancetype)init
{
    if (self = [super init]) {
        _projectList = [NSMutableArray array];
    }
    return self;
}

- (instancetype)initWithName:(NSString *)name
                         num:(NSInteger)num
                        cost:(NSInteger)cost
{
    if (self = [super init]) {
        _name = name;
        _num = num;
        _cost = cost;
    }
    return self;
}

- (NSString *)fetchProjectInfo
{
    return [NSString stringWithFormat:@"项目名称：%@\t项目人数：%ld\t项目费用：%ld", _name, _num, _cost];
}

- (void)addWithName:(NSString *)name
                num:(NSInteger)num
               cost:(NSInteger)cost
{
    [_projectList addObject:[[Project alloc] initWithName:name num:num cost:cost]];
}

- (id<IProjectIterator>)iterator
{
    return [[ProjectIterator alloc] initWithProjectList:_projectList];
}

@end
