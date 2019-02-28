
//
//  IProjectIterator.h
//  IteratorDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef IProjectIterator_h
#define IProjectIterator_h

@protocol IProject;
@protocol IProjectIterator <NSObject>


- (BOOL)hasNext;

- (void)remove;

- (id<IProject>)next;

@end

#endif /* IProjectIterator_h */
