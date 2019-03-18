//
//  ProductManager.m
//  ObserverMediatorDesignPatternCombine
//
//  Created by User on 2019/3/18.
//  Copyright © 2019 User. All rights reserved.
//
/*
 看看桥梁模式的通用类图，然后把抽象化角色和实现化角色去掉看看，是不是就是一样了？各位可能要说了，把抽象化角色和实现化角色去掉，那桥梁模式在抽象层次耦合的优点还怎么体现呢？因为我们采用的是单个产品对象，没有必要进行抽象化处理，读者若要按照该框架做扩展开发，该部分是肯定需要抽象出接口或抽象类的，好在也非常简单，只要抽取一下就可以了。这样考虑后，我们的ProductManager类就增加一个功能：组合产品类和事件类，产生有意义的产品事件
 */

#import "ProductManager.h"
#import "Product.h"
#import "ProductEvent.h"

@interface ProductManager ()

@property (nonatomic, assign) BOOL isPermittedCreate;

@end

@implementation ProductManager
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-value"
- (Product *)createProduct:(NSString *)name
{
    _isPermittedCreate = YES;
    Product *p = [[Product alloc] initWithManager:self name:name];
    [[ProductEvent alloc] initWithProduct:p type:NEW_PRODUCT];
    return p;
}

- (void)abandonProduct:(Product *)product
{
    [[ProductEvent alloc] initWithProduct:product type:DEL_PRODUCT];
    product = nil;
}

- (void)editProduct:(Product *)product name:(NSString *)name
{
    [product setName:name];
    [[ProductEvent alloc] initWithProduct:product type:EDIT_PRODUCT];
}

- (BOOL)isCreateProduct
{
    return _isPermittedCreate;
}

- (Product *)clone:(Product *)product
{
    [[ProductEvent alloc] initWithProduct:product type:CLONE_PRODUCT];
    return [product copy];
}

#pragma clang diagnostic pop
/*
 在每个方法中增加了事件的产生机制，在createProduct方法中增加了创建产品事件，在editProduct方法中增加了修改产品事件，在delProduct方法中增加了遗弃产品事件，在clone方法中增加克隆产品事件，而且每个事件都是通过组合产生的，产品和事件的扩展性非常优秀。
 */

@end
