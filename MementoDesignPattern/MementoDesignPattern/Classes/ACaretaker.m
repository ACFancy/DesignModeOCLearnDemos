//
//  ACaretaker.m
//  MementoDesignPattern
//
//  Created by User on 2019/3/1.
//  Copyright © 2019年 User. All rights reserved.
//

#import "ACaretaker.h"
#import "AMemento.h"
#import "AOriginator.h"

@interface ACaretaker ()

//自行备份
@property (nonatomic, strong) AOriginator *originator;

@property (nonatomic, strong) AMemento *memento;

//多备忘录模式
@property (nonatomic, strong) NSMutableDictionary<NSString *, AMemento *> *memMap;

//封装的更好点
@property (nonatomic, strong) id<IMemento> imemento;

@end

@implementation ACaretaker

- (instancetype)init
{
    if (self = [super init]) {
        _memMap = [NSMutableDictionary dictionary];
    }
    return self;
}

- (AMemento *)fetchMemento:(NSString *)key
{
    if (key) {
        return _memMap[key];
    }
    return nil;
}

- (void)setMemento:(AMemento *)memento forKey:(NSString *)key
{
    if (key && memento) {
        _memMap[key] = memento;
    }
}

@end
