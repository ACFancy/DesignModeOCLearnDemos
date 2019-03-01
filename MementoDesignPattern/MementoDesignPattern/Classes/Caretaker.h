//
//  Caretaker.h
//  MementoDesignPattern
//
//  Created by User on 2019/3/1.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Memento;
@interface Caretaker : NSObject

- (void)setMemento:(Memento *)memento;

- (Memento *)memento;

@end

NS_ASSUME_NONNULL_END
