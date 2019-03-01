//
//  Memento.m
//  MementoDesignPattern
//
//  Created by User on 2019/3/1.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Memento.h"

@interface Memento ()

@property (nonatomic, strong) NSString *state;

@end

@implementation Memento

- (instancetype)initWithState:(NSString *)state
{
    if (self = [super init]) {
        _state = state;
    }
    return self;
}

@end
