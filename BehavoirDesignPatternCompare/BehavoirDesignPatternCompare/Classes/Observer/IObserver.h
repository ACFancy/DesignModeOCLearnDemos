//
//  IObserver.h
//  BehavoirDesignPatternCompare
//
//  Created by User on 2019/3/13.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef IObserver_h
#define IObserver_h

@protocol IObserver <NSObject>

- (void)update:(id<IObserver>)arg0 arg1:(NSObject *)arg1;

@end

#endif /* IObserver_h */
