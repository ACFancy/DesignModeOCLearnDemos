//
//  ProjectIterator.h
//  IteratorDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IProjectIterator.h"

NS_ASSUME_NONNULL_BEGIN

@interface ProjectIterator : NSObject <IProjectIterator>

- (instancetype)initWithProjectList:(NSMutableArray *)projectList;

@end

NS_ASSUME_NONNULL_END
