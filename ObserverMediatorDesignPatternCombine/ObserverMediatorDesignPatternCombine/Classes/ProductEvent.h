//
//  ProductEvent.h
//  ObserverMediatorDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductEventType.h"

NS_ASSUME_NONNULL_BEGIN

//被观察者
@class Product;
@interface ProductEvent : NSObject

- (instancetype)initWithProduct:(Product *)product;

- (instancetype)initWithProduct:(Product *)product type:(ProductEventType)type;

- (Product *)source;

- (ProductEventType)type;

@end

NS_ASSUME_NONNULL_END
