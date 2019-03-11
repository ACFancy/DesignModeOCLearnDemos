//
//  ICarFactory.h
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#ifndef ICarFactory_h
#define ICarFactory_h

@protocol ICar;
//抽象工厂
@protocol ICarFactory <NSObject>

- (id<ICar>)createSuv;

- (id<ICar>)createVan;

@end

#endif /* ICarFactory_h */
