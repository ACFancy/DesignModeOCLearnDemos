//
//  Decorator.h
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IDStar.h"

NS_ASSUME_NONNULL_BEGIN

@interface Decorator : NSObject <IDStar>

- (instancetype)initWithStar:(id<IDStar>)star;

@end

NS_ASSUME_NONNULL_END
