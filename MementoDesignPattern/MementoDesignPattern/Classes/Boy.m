//
//  Boy.m
//  MementoDesignPattern
//
//  Created by User on 2019/3/1.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Boy.h"
#import "Memento.h"

@interface Boy ()

@property (nonatomic, strong) NSString *state;

@end

@implementation Boy

- (void)changeState
{
    _state = @"心情可能很不好";
}

- (NSString *)fetchState
{
    return _state;
}

- (Memento *)createMemento
{
    return [[Memento alloc] initWithState:_state];
}

- (void)restoreMemento:(Memento *)memento
{
    _state = [memento state];
}

@end
