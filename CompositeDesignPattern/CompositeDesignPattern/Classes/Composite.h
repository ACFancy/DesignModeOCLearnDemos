//
//  Composite.h
//  CompositeDesignPattern
//
//  Created by User on 2019/2/28.
//  Copyright © 2019年 User. All rights reserved.
//

#import "Component.h"

NS_ASSUME_NONNULL_BEGIN

//组合模式的重点就在树枝构件
//树枝构件
@interface Composite : Component

- (void)add:(Component *)component;

- (void)remove:(Component *)component;

- (NSMutableArray *)fetchChildren;

@end

NS_ASSUME_NONNULL_END
