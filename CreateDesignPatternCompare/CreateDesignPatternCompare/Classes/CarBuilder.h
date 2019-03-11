//
//  CarBuilder.h
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Car, Blueprint;
@interface CarBuilder : NSObject

- (Car *)buildCar;

- (void)receiveBlueprint:(Blueprint *)bp;

- (NSString *)buildWheel;

- (NSString *)buildEngine;

- (Blueprint *)getBlueprint;

@end

NS_ASSUME_NONNULL_END
