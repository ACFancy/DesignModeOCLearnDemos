//
//  Observer.h
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#ifndef Observer_h
#define Observer_h

@protocol Observer <NSObject>

- (void)update:(NSObject *)ob arg1:(NSObject *)arg1;

@end

#endif /* Observer_h */
