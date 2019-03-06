//
//  FlyWeight.h
//  FlyWeightDesignPattern
//
//  Created by User on 2019/3/6.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/*
 抽象享元角色一般为抽象类，在实际项目中，一般是一个实现类，它是描述一类事物的方法。在抽象角色中，一般需要把外部状态和内部状态（当然了，可以没有内部状态，只有行为也是可以的）定义出来，避免子类的随意扩展
 */
//抽象享元角色
@interface FlyWeight : NSObject

//内部状态
@property (nonatomic, strong) NSString *intrinsic;

//要求享元角色必须接受外部状态
- (instancetype)initWithExtrinsic:(NSString *)extrinsic;

//定义业务操作
- (void)operate;

@end

NS_ASSUME_NONNULL_END
