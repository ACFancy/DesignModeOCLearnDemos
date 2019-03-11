//
//  Director2.h
//  CreateDesignPatternCompare
//
//  Created by User on 2019/3/11.
//  Copyright © 2019年 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ICar2.h"

NS_ASSUME_NONNULL_BEGIN

@interface Director2 : NSObject

- (id<ICar2>)createBenzSuv;

- (id<ICar2>)createBenzVan;

- (id<ICar2>)createBMWSuv;

- (id<ICar2>)createBMWVan;

- (id<ICar2>)createComplexCar;

@end

NS_ASSUME_NONNULL_END
