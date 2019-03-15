//
//  AbsStar.h
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/15.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class AbsAction;
@interface AbsStar : NSObject

- (instancetype)initWithAction:(AbsAction *)action;

- (void)doJob;

@end

NS_ASSUME_NONNULL_END
