//
//  Component.h
//  CompositeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//抽象构件
@interface Component : NSObject

//个体和整体都具有的共享
- (void)operation;

//透明模式，才会将下面的操作定义在抽象构件中
//抽象构件定义了树枝节点和树叶节点都必须具有的方法和属性，这样树枝节点的实现就不需要任何变化
//- (void)add:(Component *)component;
//
//- (void)remove:(Component *)component;
//
//- (NSMutableArray *)fetchChildren;

@end

NS_ASSUME_NONNULL_END
