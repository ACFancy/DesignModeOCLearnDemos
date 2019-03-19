//
//  FilterDispatcher.h
//  MVC_NO_IOS
//
//  Created by User on 2019/3/19.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Filter.h"

NS_ASSUME_NONNULL_BEGIN

@class FilterConfig;
@interface FilterDispatcher : NSObject <Filter>

- (void)config:(FilterConfig *)config;

@end

NS_ASSUME_NONNULL_END
