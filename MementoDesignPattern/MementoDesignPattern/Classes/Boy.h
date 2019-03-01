//
//  Boy.h
//  MementoDesignPattern
//
//  Created by User on 2019/3/1.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Memento;
@interface Boy : NSObject

- (void)changeState;

- (NSString *)fetchState;

- (void)setState:(NSString *)state;

//保留一个备份
- (Memento *)createMemento;

//恢复一个备份
- (void)restoreMemento:(Memento *)memento;

@end

NS_ASSUME_NONNULL_END
