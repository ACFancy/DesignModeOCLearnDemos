//
//  Agent.h
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IStar.h"

NS_ASSUME_NONNULL_BEGIN

@interface Agent : NSObject <IStar>

- (instancetype)initWithStar:(id<IStar>)star;

@end

NS_ASSUME_NONNULL_END
