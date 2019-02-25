//
//  HumanFactory.h
//  FactoryDesignPattern
//
//  Created by User on 9/5/18.
//  Copyright © 2018 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Interface.h"

NS_ASSUME_NONNULL_BEGIN

@interface HumanFactory : NSObject <AbstractHumanFactory>


/**
 简单工厂模式,(去掉抽象类，使用类方法)
 */
+ (id<Human>)createHuman:(Class)c;

@end

NS_ASSUME_NONNULL_END
