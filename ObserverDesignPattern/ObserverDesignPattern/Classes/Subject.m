//
//  Subject.m
//  ObserverDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Subject.h"

@interface Subject ()

@property (nonatomic, strong) NSMutableArray *obsList;

@end

@implementation Subject

- (instancetype)init
{
    if (self = [super init]) {
        _obsList = [NSMutableArray array];
    }
    return self;
}

- (void)addObserver:(id<IObserver>)observer
{
    if (observer) {
        [_obsList addObject:observer];
    }
}

- (void)delObserver:(id<IObserver>)observer
{
    if (observer && [_obsList containsObject:observer]) {
        [_obsList removeObject:observer];
    }
}

- (void)notifyObservers
{
    for (id<IObserver> ob in _obsList) {
        [ob update];
    }
}

@end
