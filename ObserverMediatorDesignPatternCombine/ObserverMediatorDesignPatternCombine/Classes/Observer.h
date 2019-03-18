//
//  Observer.h
//  ObserverMediatorDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#ifndef Observer_h
#define Observer_h

@protocol Observer <NSObject>

- (void)update:(NSObject *)o obj:(NSObject *)obj;

@end

#endif /* Observer_h */
