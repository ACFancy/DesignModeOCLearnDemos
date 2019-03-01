//
//  AMemento.m
//  MementoDesignPattern
//
//  Created by User on 2019/3/1.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AMemento.h"

@interface AMemento ()

@property (nonatomic, strong) NSString *state;
@property (nonatomic, strong) NSMutableDictionary *stateMap;

@end

@implementation AMemento

- (instancetype)initWithState:(NSString *)state
{
    if (self = [super init]) {
        _state = state;
    }
    return self;
}

- (instancetype)initWithStateMap:(NSMutableDictionary *)stateMap
{
    if (self = [super init]) {
        _stateMap = stateMap;
    }
    return self;
}


@end
