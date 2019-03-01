//
//  ACaretaker.h
//  MementoDesignPattern
//
//  Created by User on 2019/3/1.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IMemento.h"

NS_ASSUME_NONNULL_BEGIN

@class AMemento, AOriginator;
@interface ACaretaker : NSObject

- (void)setMemento:(AMemento *)memento;

- (AMemento *)memento;

//没什么太大变化，只是备忘录角色转换成了发起人角色
- (void)setOriginator:(AOriginator *)originator;

- (AOriginator *)originator;

//多备忘录
- (AMemento *)fetchMemento:(NSString *)key;

- (void)setMemento:(AMemento *)memento forKey:(NSString *)key;

//封装的更好点
- (id<IMemento>)imemento;

- (void)setImemento:(id<IMemento>)imemento;

@end

NS_ASSUME_NONNULL_END
