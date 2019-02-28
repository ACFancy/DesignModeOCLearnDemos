//
//  Observable.h
//  ObserverDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef Observable_h
#define Observable_h

@protocol Observer;
@protocol Observable <NSObject>

- (void)addObserver:(id<Observer>)observer;

- (void)deleteObserver:(id<Observer>)observer;

- (void)notifyObserver:(NSString *)context;

@end

#endif /* Observable_h */
