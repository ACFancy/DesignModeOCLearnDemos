//
//  FlyweightFactory.h
//  FlyWeightDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@class FlyWeight;
//享元工厂
@interface FlyweightFactory : NSObject

+ (FlyWeight *)fetchFlyweight:(NSString *)extrinsic;

@end

NS_ASSUME_NONNULL_END
