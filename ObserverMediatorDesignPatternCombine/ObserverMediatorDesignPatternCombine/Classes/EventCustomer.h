//
//  EventCustomer.h
//  ObserverMediatorDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EventCustomType.h"

NS_ASSUME_NONNULL_BEGIN

//事件处理抽象类
@class ProductEvent;
@interface EventCustomer : NSObject

- (instancetype)initWithType:(EventCustomType)type;

- (NSMutableArray *)customType;

- (void)exec:(ProductEvent *)event;

- (void)addCustomType:(EventCustomType)type;

@end

NS_ASSUME_NONNULL_END
