//
//  AColleague.h
//  MediatorDesignPattern
//
//  Created by User on 2019/2/25.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class AMediator;
@interface AColleague : NSObject

@property (nonatomic, weak) AMediator *mediator;

- (instancetype)initWithMediator:(AMediator *)mediator;

@end

NS_ASSUME_NONNULL_END
