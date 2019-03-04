//
//  AbsActor.h
//  VisitorDesignPattern
//
//  Created by User on 2019/3/4.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Role.h"

NS_ASSUME_NONNULL_BEGIN

@class KungFuRole;
@interface AbsActor : NSObject

- (void)act:(id<Role>)role;

- (void)actKongFu:(KungFuRole *)role;

@end

NS_ASSUME_NONNULL_END
