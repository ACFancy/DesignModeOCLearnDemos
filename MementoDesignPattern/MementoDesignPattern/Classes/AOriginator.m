//
//  AOriginator.m
//  MementoDesignPattern
//
//  Created by User on 2019/3/1.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AOriginator.h"
#import "AMemento.h"
#import "BeanUtils.h"

////内置类 不暴露给该文件外使用
@interface AAMemento : NSObject <IMemento>

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithState:(NSString *)state;

@end

@interface AAMemento ()

@property (nonatomic, strong) NSString *state;

@end

@implementation AAMemento

- (instancetype)initWithState:(NSString *)state
{
    if (self = [super init]) {
        _state = state;
    }
    return self;
}

@end

@interface AOriginator ()

//发起人自主备份和恢复
/*
 可能你要发问了，这和备忘录模式的定义不相符，它定义是“在该对象之外保存这个状态”，而你却把这个状态保存在了发起人内部。是的，设计模式定义的诞生比Java的出世略早，它没有想到Java程序是这么有活力，有远见，而且在面向对象的设计中，即使把一个类封装在另一个类中也是可以做到的，何况一个小小的对象复制，这是它的设计模式完全没有预见到的，我们把它弥补回来
 */
@property (nonatomic, strong) AOriginator *backUp;

@property (nonatomic, strong) NSString *state;

@property (nonatomic, strong) NSString *state1;
@property (nonatomic, strong) NSString *state2;
@property (nonatomic, strong) NSString *state3;

@end

@implementation AOriginator


- (AMemento *)createMemento
{
    return [[AMemento alloc] initWithState:_state];
}

- (void)restoreMemento:(AMemento *)memento
{
    _state = [memento state];
}

- (void)createMemento2
{
    _backUp = [self copy];
}

- (void)restoreMemento2
{
    _state = [_backUp state];
}

- (AMemento *)createMemento3
{
   return [[AMemento alloc] initWithStateMap:[BeanUtils backupProp:self]];
}

- (void)restoreMemento3:(AMemento *)memento
{
    [BeanUtils restoreProp:self propMap:[memento stateMap]];
}

//封装的更好点
- (id<IMemento>)createMemento4
{
    return [[AAMemento alloc] initWithState:_state];
}

- (void)restoreMemento4:(id<IMemento>)memento
{
    _state = [(AAMemento *)memento state];
}

#pragma mark - Override
- (id)copyWithZone:(NSZone *)zone
{
    AOriginator *clone = [[AOriginator allocWithZone:zone] init];
    clone.state = _state;
    return clone;
}

@end
