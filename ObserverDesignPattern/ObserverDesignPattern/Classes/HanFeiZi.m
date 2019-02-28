//
//  HanFeiZi.m
//  ObserverDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "HanFeiZi.h"
//#import "LiSi.h"
#import "Observer.h"

@interface HanFeiZi ()

//@property (nonatomic, strong) LiSi *lisi;
@property (nonatomic, strong) NSMutableArray *observerList;

@end

@implementation HanFeiZi

- (instancetype)init
{
    if (self = [super init]) {
//        _lisi = [LiSi new];
        _observerList = [NSMutableArray array];
    }
    return self;
}


- (void)haveBreakfast
{
    NSLog(@"%s", __FUNCTION__);
    _isHavingBreakFast = YES;
//    [_lisi update:@"breakfast"];
    [self notifyObserver:@"breakfast"];
}

- (void)haveFun
{
    NSLog(@"%s", __FUNCTION__);
    _isHavingFun = YES;
//    [_lisi update:@"fun"];
    [self notifyObserver:@"fun"];
}

- (void)addObserver:(id<Observer>)observer
{
    if (observer) {
        [_observerList addObject:observer];
    }
}

- (void)deleteObserver:(id<Observer>)observer
{
    if (observer && [_observerList containsObject:observer]) {
        [_observerList removeObject:observer];
    }
}

- (void)notifyObserver:(NSString *)context
{
    for (id<Observer> ob in _observerList) {
        [ob update:context];
    }
}

@end
