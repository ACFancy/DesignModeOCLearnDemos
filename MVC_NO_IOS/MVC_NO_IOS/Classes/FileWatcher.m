//
//  FileWatcher.m
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import "FileWatcher.h"
#import "Checker.h"

@interface FileWatcher ()

@property (nonatomic, assign) BOOL isReload;
@property (nonatomic, strong) NSMutableArray *observers;

@end

@implementation FileWatcher

- (instancetype)init
{
    if (self = [super init]) {
        _observers = [NSMutableArray array];
    }
    return self;
}


- (void)watch
{
    [_observers addObject:[Checker new]];
    [self notifyObserver];
}

#pragma mark - Private Methods
- (void)notifyObserver
{
    for (id<Observer> ob in _observers) {
        [ob update:self arg1:@(_isReload)];
    }
}

@end
