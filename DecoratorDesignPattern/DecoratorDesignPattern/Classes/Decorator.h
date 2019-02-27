//
//  Decorator.h
//  DecoratorDesignPattern
//
//  Created by User on 2019/2/27.
//  Copyright © 2019年 User. All rights reserved.
//

#import "SchoolReport.h"

NS_ASSUME_NONNULL_BEGIN
/*
 装饰类还是把动作的执行委托给需要装饰的对象，Decorator抽象类的目的很简单，就是要让子类来封装SchoolReport的子类，怎么封装？重写report方法
 */

@interface Decorator : SchoolReport

- (instancetype)initWithReport:(SchoolReport *)report;

@end

NS_ASSUME_NONNULL_END
