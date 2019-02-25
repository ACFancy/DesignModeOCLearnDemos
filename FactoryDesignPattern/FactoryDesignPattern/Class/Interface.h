//
//  Interface.h
//  FactoryDesignPattern
//
//  Created by User on 9/5/18.
//  Copyright © 2018 User. All rights reserved.
//

#ifndef Interface_h
#define Interface_h

@protocol Human <NSObject>

- (void)getColor;

- (void)talk;

@end

@protocol AbstractHumanFactory <NSObject>

@optional
/*
 * 创建一个产品对象，其输入参数类型可以自行设置
 * 通常为String、Enum、Class等，当然也可以为空
 */
- (id<Human>)createHuman:(Class)c;

- (id<Human>)createHuman;

@end

#endif /* Interface_h */
