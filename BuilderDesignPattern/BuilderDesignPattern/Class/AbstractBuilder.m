//
//  AbstractBuilder.m
//  BuilderDesignPattern
//
//  Created by User on 2019/2/21.
//  Copyright © 2019年 User. All rights reserved.
//

#import "AbstractBuilder.h"
#import "Product.h"

@interface AbstractBuilder ()

@property (nonatomic, strong) Product *product;

@end

@implementation AbstractBuilder

- (instancetype)init
{
    if (self = [super init]) {
        _product = [Product new];
    }
    return self;
}

//设置产品的不同部分，以获得不同的产品
- (void)setPart
{
    //setPart方法是零件的配置，什么是零件？其他的对象，获得一个不同零件，或者不同的装配顺序就可能产生不同的产品
    //产品类内的逻辑处理
}

//建造产品
- (id<Product>)buildProduct
{
    return _product;
    //需要注意的是，如果有多个产品类就有几个具体的建造者，而且这多个产品类具有相同接口或抽象类，参考我们上面的例子
}

@end
