//
//  HouseCrop.h
//  BridgeDesignPattern
//
//  Created by User on 2019/3/7.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Corp.h"

NS_ASSUME_NONNULL_BEGIN

@class House;
@interface HouseCorp : Corp

- (instancetype)initWithProduct:(House *)house;

@end

NS_ASSUME_NONNULL_END
