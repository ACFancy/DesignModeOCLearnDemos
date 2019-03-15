//
//  AbsColleague.h
//  CrossAreaDesignPatternCompare
//
//  Created by User on 2019/3/14.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class AbsMediator;
@interface AbsColleague : NSObject

@property (nonatomic, strong, readonly) AbsMediator *mediator;

- (instancetype)initWithMediator:(AbsMediator *)mediator;

@end

NS_ASSUME_NONNULL_END
