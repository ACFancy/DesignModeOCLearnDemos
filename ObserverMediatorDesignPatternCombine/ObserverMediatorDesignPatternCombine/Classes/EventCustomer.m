//
//  EventCustomer.m
//  ObserverMediatorDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import "EventCustomer.h"

@interface EventCustomer ()

//容纳每个消费者能够处理的级别
@property (nonatomic, strong) NSMutableArray *customType;

@end

@implementation EventCustomer

- (instancetype)initWithType:(EventCustomType)type
{
    if (self = [super init]) {
        //每个消费者都要声明自己处理哪一类别的事件
        _customType = [NSMutableArray array];
        [self addCustomType:type];
    }
    return self;
}

//每个消费者可以消费多个事件
- (void)addCustomType:(EventCustomType)type
{
    [_customType addObject:@(type)];
}

//每个事件都要对事件进行声明式消费
- (void)exec:(ProductEvent *)event
{
    @throw [NSException exceptionWithName:@"CallErrorDomain" reason:@"Must be override in subclass" userInfo:nil];
}

@end
