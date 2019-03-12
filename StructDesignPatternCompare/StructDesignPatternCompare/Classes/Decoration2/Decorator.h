//
//  Decorator.h
//  StructDesignPatternCompare
//
//  Created by User on 2019/3/12.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ISwan.h"

NS_ASSUME_NONNULL_BEGIN

@interface Decorator : NSObject <ISwan>

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithSwan:(id<ISwan>)swan;

@end

NS_ASSUME_NONNULL_END
