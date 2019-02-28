//
//  Boss.m
//  IteratorDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Boss.h"
#import "Project.h"
#import "ProjectIterator.h"

@implementation Boss

- (void)viewResult
{
//    NSMutableArray *projectList = [NSMutableArray array];
//    [projectList addObject:[[Project alloc] initWithName:@"xx" num:10 cost:10000000]];
//    [projectList addObject:[[Project alloc] initWithName:@"yy" num:10 cost:10000000]];
//    [projectList addObject:[[Project alloc] initWithName:@"zz" num:10 cost:10000000]];
//    [projectList addObject:[[Project alloc] initWithName:@"qq" num:10 cost:10000000]];
//    for (int i = 5; i < 104; i++) {
//        [projectList addObject:[[Project alloc] initWithName:@(i).stringValue num:5*i cost:10000000*i]];
//    }
//
//    for (id<IProject> project in projectList) {
//        NSLog(@"%@", [project fetchProjectInfo]);
//    }
    

    
    //自建迭代器遍历 迭代器模式
    id<IProject> project = [Project new];
    [project addWithName:@"xx" num:10 cost:100000];
    [project addWithName:@"yy" num:10 cost:100000];
    [project addWithName:@"zz" num:10 cost:100000];
    for (int i = 4; i < 104; i++) {
        [project addWithName:@(i).stringValue num:i*10 cost:i*200000];
    }
    
    id<IProjectIterator> projectIterator = [project iterator];
    while ([projectIterator hasNext]) {
        id<IProject> temp = [projectIterator next];
        NSLog(@"%@", [temp fetchProjectInfo]);
    }
}

@end
