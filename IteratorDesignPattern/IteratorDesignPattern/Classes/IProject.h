//
//  IProject.h
//  IteratorDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef IProject_h
#define IProject_h

@protocol IProjectIterator;
// 项目信息接口
@protocol IProject <NSObject>

- (NSString *)fetchProjectInfo;

- (void)addWithName:(NSString *)name
                num:(NSInteger)num
               cost:(NSInteger)cost;

- (id<IProjectIterator>)iterator;

@end

#endif /* IProject_h */
