//
//  ProductManager.h
//  ObserverMediatorDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//Factory, Bridge(Product, ProductEvent 组合)
@class Product;
@interface ProductManager : NSObject

- (Product *)createProduct:(NSString *)name;

- (void)abandonProduct:(Product *)product;

- (void)editProduct:(Product *)product name:(NSString *)name;

- (BOOL)isCreateProduct;

- (Product *)clone:(Product *)product;

@end

NS_ASSUME_NONNULL_END
