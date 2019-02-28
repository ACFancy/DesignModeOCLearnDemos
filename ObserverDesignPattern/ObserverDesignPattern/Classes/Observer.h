//
//  Observer.h
//  ObserverDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef Observer_h
#define Observer_h

@protocol Observer <NSObject>

- (void)update:(NSString *)context;

@end

#endif /* Observer_h */
