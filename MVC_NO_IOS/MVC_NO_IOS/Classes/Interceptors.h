//
//  Interceptors.h
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterable.h"

NS_ASSUME_NONNULL_BEGIN

@class Iterator;
@interface Interceptors : NSObject <Iterable>

- (Iterator *)iterator;

- (void)intercept;

@end

NS_ASSUME_NONNULL_END
