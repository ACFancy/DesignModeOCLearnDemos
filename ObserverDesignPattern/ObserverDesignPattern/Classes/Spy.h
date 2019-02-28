//
//  Spy.h
//  ObserverDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class HanFeiZi, LiSi;
@interface Spy : NSThread

- (instancetype)initWithHan:(HanFeiZi *)hanfeizi
                       lisi:(LiSi *)lisi
                       type:(NSString *)type;

@end

NS_ASSUME_NONNULL_END
