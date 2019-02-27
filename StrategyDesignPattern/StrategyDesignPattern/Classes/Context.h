//
//  Context.h
//  StrategyDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IStrategy.h"

NS_ASSUME_NONNULL_BEGIN

//通过构造函数把策略传递进来，然后用operate()方法来执行相关的策略方法
@interface Context : NSObject

//构造函数，你要使用哪个妙计
- (instancetype)initWithStrategy:(id<IStrategy>)strategy;

//使用计谋了，看我出招了
- (void)operate;

@end

NS_ASSUME_NONNULL_END
