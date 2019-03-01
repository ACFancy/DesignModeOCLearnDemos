//
//  AOriginator.h
//  MementoDesignPattern
//
//  Created by User on 2019/3/1.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IMemento.h"

NS_ASSUME_NONNULL_BEGIN

@class AMemento;
@interface AOriginator : NSObject <NSCopying>

- (void)setState:(NSString *)state;

- (NSString *)state;

//多状态
- (void)setState1:(NSString *)state1;

- (NSString *)state1;

- (void)setState2:(NSString *)state2;

- (NSString *)state2;

- (void)setState3:(NSString *)state3;

- (NSString *)state3;

//创建一个备忘录
- (AMemento *)createMemento;

//恢复一个备忘录
- (void)restoreMemento:(AMemento *)memento;

//自行备份
- (void)createMemento2;

- (void)restoreMemento2;

//多状态
- (AMemento *)createMemento3;

- (void)restoreMemento3:(AMemento *)memento;

//封装的更好点
- (id<IMemento>)createMemento4;

- (void)restoreMemento4:(id<IMemento>)memento;



@end

NS_ASSUME_NONNULL_END
