//
//  AbstractColleague.h
//  MediatorDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//抽象同事类
@class AbstractMediator;
@interface AbstractColleague : NSObject

@property (nonatomic, weak) AbstractMediator *mediator;

- (instancetype)initWithMediator:(AbstractMediator *)mediator;

@end

NS_ASSUME_NONNULL_END
