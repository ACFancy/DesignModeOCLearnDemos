//
//  Subject.h
//  ObserverDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IObserver.h"

NS_ASSUME_NONNULL_BEGIN

@interface Subject : NSObject

- (void)addObserver:(id<IObserver>)observer;

- (void)delObserver:(id<IObserver>)observer;

- (void)notifyObservers;

@end

NS_ASSUME_NONNULL_END
