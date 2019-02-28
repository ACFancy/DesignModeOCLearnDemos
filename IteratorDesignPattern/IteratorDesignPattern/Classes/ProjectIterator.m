//
//  ProjectIterator.m
//  IteratorDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ProjectIterator.h"

@interface ProjectIterator ()

@property (nonatomic, strong) NSMutableArray *projectList;
@property (nonatomic, assign) NSInteger currentItem;

@end

@implementation ProjectIterator

- (instancetype)initWithProjectList:(NSMutableArray *)projectList
{
    if (self = [super init]) {
        _projectList = projectList;
        _currentItem = 0;
    }
    return self;
}

- (BOOL)hasNext
{
    return ((_currentItem) < _projectList.count);
}

- (id<IProject>)next
{
    if ([self hasNext]) {
        return _projectList[_currentItem++];
    }
    return nil;
}

- (void)remove {
    //TODO: 暂时没用到
}


@end
