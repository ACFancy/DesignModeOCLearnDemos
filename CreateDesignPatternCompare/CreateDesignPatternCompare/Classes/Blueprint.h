//
//  Blueprint.h
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//生产蓝图
//这和一个具体的产品Car类是一样的？错，不一样！它是一个蓝图，是一个可以参考的模板，有一个蓝图可以设计出非常多的产品，如有一个R系统的奔驰商务车设计蓝图，我们就可以生产出一系列的奔驰车。它指导我们的产品生产，而不是一个具体的产品
@interface Blueprint : NSObject

@property (nonatomic, strong) NSString *wheel;
@property (nonatomic, strong) NSString *engine;

@end

NS_ASSUME_NONNULL_END
